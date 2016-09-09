.class public Lcom/google/android/calendar/builders/MapBuilder;
.super Ljava/lang/Object;
.source "MapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMapUnderConstruction:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TV;>;"
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/builders/MapBuilder;->mMapUnderConstruction:Ljava/util/HashMap;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/calendar/builders/MapBuilder;->mReturned:Z

    return-void
.end method


# virtual methods
.method public build()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/calendar/builders/MapBuilder;->mReturned:Z

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/builders/MapBuilder;->mReturned:Z

    .line 39
    iget-object v0, p0, Lcom/google/android/calendar/builders/MapBuilder;->mMapUnderConstruction:Ljava/util/HashMap;

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() can be invoked only once on MapBuilder!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buildImmutable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/calendar/builders/MapBuilder;->build()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/builders/MapBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/android/calendar/builders/MapBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/google/android/calendar/builders/MapBuilder;->mReturned:Z

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add() cannot be invoked after build() has been invoked!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/builders/MapBuilder;->mMapUnderConstruction:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-object p0
.end method
