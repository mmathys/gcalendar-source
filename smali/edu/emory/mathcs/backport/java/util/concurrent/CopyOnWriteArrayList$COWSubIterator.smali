.class Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "COWSubIterator"
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field cursor:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field first:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field last:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;III)V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->array:[Ljava/lang/Object;

    .line 846
    iput p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->first:I

    .line 847
    iput p3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->last:I

    .line 848
    iput p4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    .line 849
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 863
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 850
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->last:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 851
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->first:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 854
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->last:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 855
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 852
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->first:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 859
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->first:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 860
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 857
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->first:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 869
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 866
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
