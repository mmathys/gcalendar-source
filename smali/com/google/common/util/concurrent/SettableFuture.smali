.class public final Lcom/google/common/util/concurrent/SettableFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
