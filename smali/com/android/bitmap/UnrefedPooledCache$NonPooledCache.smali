.class Lcom/android/bitmap/UnrefedPooledCache$NonPooledCache;
.super Landroid/util/LruCache;
.source "UnrefedPooledCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bitmap/UnrefedPooledCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonPooledCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bitmap/UnrefedPooledCache;


# direct methods
.method public constructor <init>(Lcom/android/bitmap/UnrefedPooledCache;I)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/bitmap/UnrefedPooledCache$NonPooledCache;->this$0:Lcom/android/bitmap/UnrefedPooledCache;

    .line 223
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 224
    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Lcom/android/bitmap/Poolable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/bitmap/UnrefedPooledCache$NonPooledCache;->this$0:Lcom/android/bitmap/UnrefedPooledCache;

    invoke-virtual {v0, p2}, Lcom/android/bitmap/UnrefedPooledCache;->sizeOf(Lcom/android/bitmap/Poolable;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 220
    check-cast p2, Lcom/android/bitmap/Poolable;

    invoke-virtual {p0, p1, p2}, Lcom/android/bitmap/UnrefedPooledCache$NonPooledCache;->sizeOf(Ljava/lang/Object;Lcom/android/bitmap/Poolable;)I

    move-result v0

    return v0
.end method
