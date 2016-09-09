.class public Lcom/google/android/calendar/builders/ListBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mListUnderConstruction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mReturned:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/builders/ListBuilder;->mListUnderConstruction:Ljava/util/ArrayList;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/calendar/builders/ListBuilder;->mReturned:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/calendar/builders/ListBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/google/android/calendar/builders/ListBuilder;->mReturned:Z

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add() cannot be invoked after build() has been invoked!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/builders/ListBuilder;->mListUnderConstruction:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-object p0
.end method

.method public build()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/calendar/builders/ListBuilder;->mReturned:Z

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/builders/ListBuilder;->mReturned:Z

    .line 39
    iget-object v0, p0, Lcom/google/android/calendar/builders/ListBuilder;->mListUnderConstruction:Ljava/util/ArrayList;

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() can be invoked only once on ListBuilder!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buildImmutable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/calendar/builders/ListBuilder;->build()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
