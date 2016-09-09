.class final Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory$1;
.super Ljava/lang/Object;
.source "FlairAllocatorFactory.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->makeWordSplitter(Ljava/util/Locale;)Lcom/google/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$locale:Ljava/util/Locale;

.field final synthetic val$wordIterator:Ljava/text/BreakIterator;


# direct methods
.method constructor <init>(Ljava/util/Locale;Ljava/text/BreakIterator;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory$1;->val$locale:Ljava/util/Locale;

    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory$1;->val$wordIterator:Ljava/text/BreakIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory$1;->apply(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 234
    if-nez p1, :cond_0

    .line 235
    new-array v0, v0, [Ljava/lang/String;

    .line 254
    :goto_0
    return-object v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory$1;->val$locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 238
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 239
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory$1;->val$wordIterator:Ljava/text/BreakIterator;

    monitor-enter v4

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory$1;->val$wordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory$1;->val$wordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0}, Ljava/text/BreakIterator;->first()I

    move-result v1

    .line 242
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory$1;->val$wordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v0

    .line 244
    :goto_1
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 245
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 247
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory$1;->val$wordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result v1

    move v6, v1

    move v1, v0

    move v0, v6

    .line 252
    goto :goto_1

    .line 253
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
