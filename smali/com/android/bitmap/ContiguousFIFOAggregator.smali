.class public Lcom/android/bitmap/ContiguousFIFOAggregator;
.super Ljava/lang/Object;
.source "ContiguousFIFOAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bitmap/ContiguousFIFOAggregator$Value;,
        Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExpected:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/bitmap/ContiguousFIFOAggregator",
            "<TT;>.Value;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/bitmap/ContiguousFIFOAggregator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bitmap/ContiguousFIFOAggregator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    .line 79
    return-void
.end method

.method private contains(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeExecuteNow()V
    .locals 4

    .prologue
    .line 192
    const/4 v0, 0x0

    move v1, v0

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    const-string v0, "pool maybeExecuteNow loop"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 196
    if-lez v1, :cond_0

    .line 198
    invoke-direct {p0, v0}, Lcom/android/bitmap/ContiguousFIFOAggregator;->onFirstExpectedChanged(Ljava/lang/Object;)V

    .line 201
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 202
    iget-object v0, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;

    .line 203
    iget-object v3, v0, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;->task:Ljava/lang/Runnable;

    if-nez v3, :cond_2

    .line 204
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 217
    :cond_1
    return-void

    .line 208
    :cond_2
    iget-object v3, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 209
    iget-object v3, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 213
    iget-object v0, v0, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;->task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 214
    add-int/lit8 v0, v1, 0x1

    .line 215
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    move v1, v0

    .line 216
    goto :goto_0
.end method

.method private onFirstExpectedChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;

    .line 226
    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, v0, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;->callback:Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;

    .line 230
    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0, p1}, Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;->onBecomeFirstExpected(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    const-string v0, "pool execute"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;

    .line 169
    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    .line 170
    :cond_0
    if-eqz p2, :cond_1

    .line 171
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 173
    :cond_1
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 182
    :goto_0
    return-void

    .line 176
    :cond_2
    iput-object p2, v0, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;->task:Ljava/lang/Runnable;

    .line 180
    invoke-direct {p0}, Lcom/android/bitmap/ContiguousFIFOAggregator;->maybeExecuteNow()V

    .line 181
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_0
.end method

.method public expect(Ljava/lang/Object;Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/bitmap/ContiguousFIFOAggregator$Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Do not use null keys."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    const-string v0, "pool expect"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/bitmap/ContiguousFIFOAggregator;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    .line 106
    iget-object v2, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 107
    iget-object v2, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, v4}, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;-><init>(Lcom/android/bitmap/ContiguousFIFOAggregator;Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    if-eqz v1, :cond_2

    .line 113
    invoke-direct {p0, p1}, Lcom/android/bitmap/ContiguousFIFOAggregator;->onFirstExpectedChanged(Ljava/lang/Object;)V

    .line 115
    :cond_2
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 116
    return-void
.end method

.method public forget(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Do not use null keys."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bitmap/ContiguousFIFOAggregator;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string v0, "pool forget"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 144
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    invoke-direct {p0, v0}, Lcom/android/bitmap/ContiguousFIFOAggregator;->onFirstExpectedChanged(Ljava/lang/Object;)V

    .line 149
    :cond_2
    invoke-direct {p0}, Lcom/android/bitmap/ContiguousFIFOAggregator;->maybeExecuteNow()V

    .line 150
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_0
.end method
