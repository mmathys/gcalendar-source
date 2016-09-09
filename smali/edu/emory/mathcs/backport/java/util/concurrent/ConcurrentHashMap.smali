.class public Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
.super Ledu/emory/mathcs/backport/java/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntrySet;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Values;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$KeySet;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$WriteThroughEntry;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de129d87293dL
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final segmentMask:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final segmentShift:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 650
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v1, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 651
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 6

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v0, 0x10000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 583
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;-><init>()V

    .line 584
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    if-ltz p1, :cond_0

    if-gtz p3, :cond_1

    .line 585
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 587
    :cond_1
    if-le p3, v0, :cond_2

    move p3, v0

    :cond_2
    move v4, v3

    move v0, v2

    .line 593
    :goto_0
    if-ge v4, p3, :cond_3

    .line 594
    add-int/lit8 v5, v0, 0x1

    .line 595
    shl-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v5

    goto :goto_0

    .line 597
    :cond_3
    rsub-int/lit8 v0, v0, 0x20

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentShift:I

    .line 598
    add-int/lit8 v0, v4, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentMask:I

    .line 599
    invoke-static {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->newArray(I)[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    .line 601
    if-le p1, v1, :cond_4

    move p1, v1

    .line 603
    :cond_4
    div-int v0, p1, v4

    .line 604
    mul-int v1, v0, v4

    if-ge v1, p1, :cond_5

    .line 605
    add-int/lit8 v0, v0, 0x1

    :cond_5
    move v1, v3

    .line 607
    :goto_1
    if-ge v1, v0, :cond_6

    .line 608
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v0, v2

    .line 610
    :goto_2
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 611
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    new-instance v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v3, v1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;-><init>(IF)V

    aput-object v3, v2, v0

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 612
    :cond_7
    return-void
.end method

.method private static hash(I)I
    .locals 2

    .prologue
    .line 163
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr v0, p0

    .line 164
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1259
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1260
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->setTable([Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 1259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1269
    :cond_0
    invoke-virtual {p0, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1266
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1267
    if-nez v0, :cond_0

    .line 1271
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 1228
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    move v0, v1

    .line 1230
    :goto_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1231
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v4, v2, v0

    .line 1232
    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 1234
    :try_start_0
    iget-object v5, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move v3, v1

    .line 1235
    :goto_1
    array-length v2, v5

    if-ge v3, v2, :cond_1

    .line 1236
    aget-object v2, v5, v3

    :goto_2
    if-eqz v2, :cond_0

    .line 1237
    iget-object v6, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1238
    iget-object v6, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1236
    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1235
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 1242
    :cond_1
    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 1230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1242
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v0

    .line 1245
    :cond_2
    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1246
    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1247
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 968
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 969
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->clear()V

    .line 968
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 970
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 780
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 781
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 796
    if-nez p1, :cond_0

    .line 797
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 801
    :cond_0
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    .line 802
    array-length v0, v5

    new-array v6, v0, [I

    move v4, v1

    .line 805
    :goto_0
    const/4 v0, 0x2

    if-ge v4, v0, :cond_5

    move v0, v1

    move v2, v1

    .line 808
    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_3

    .line 809
    aget-object v7, v5, v0

    iget v7, v7, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 810
    aget-object v7, v5, v0

    iget v7, v7, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v7, v6, v0

    add-int/2addr v2, v7

    .line 811
    aget-object v7, v5, v0

    invoke-virtual {v7, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v3

    .line 842
    :cond_1
    :goto_2
    return v1

    .line 808
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 815
    :cond_3
    if-eqz v2, :cond_b

    move v0, v1

    .line 816
    :goto_3
    array-length v2, v5

    if-ge v0, v2, :cond_b

    .line 817
    aget-object v2, v5, v0

    iget v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 818
    aget v2, v6, v0

    aget-object v7, v5, v0

    iget v7, v7, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-eq v2, v7, :cond_4

    move v0, v1

    .line 824
    :goto_4
    if-nez v0, :cond_1

    .line 805
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 816
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v1

    .line 828
    :goto_5
    array-length v2, v5

    if-ge v0, v2, :cond_6

    .line 829
    aget-object v2, v5, v0

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move v0, v1

    .line 832
    :goto_6
    :try_start_0
    array-length v2, v5

    if-ge v0, v2, :cond_a

    .line 833
    aget-object v2, v5, v0

    invoke-virtual {v2, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    move v0, v3

    .line 839
    :goto_7
    array-length v2, v5

    if-ge v1, v2, :cond_9

    .line 840
    aget-object v2, v5, v1

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 832
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 839
    :cond_8
    throw v0

    :cond_9
    move v1, v0

    .line 842
    goto :goto_2

    .line 839
    :goto_8
    array-length v2, v5

    if-ge v1, v2, :cond_8

    .line 840
    aget-object v2, v5, v1

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_a
    move v0, v1

    goto :goto_7

    :cond_b
    move v0, v3

    goto :goto_4
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    .line 1032
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntrySet;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntrySet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 766
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 767
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 674
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    .line 684
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    .line 686
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 687
    aget-object v5, v3, v0

    iget v5, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v5, :cond_1

    .line 702
    :cond_0
    :goto_1
    return v1

    .line 690
    :cond_1
    aget-object v5, v3, v0

    iget v5, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v5, v4, v0

    add-int/2addr v2, v5

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 695
    :cond_2
    if-eqz v2, :cond_3

    move v0, v1

    .line 696
    :goto_2
    array-length v2, v3

    if-ge v0, v2, :cond_3

    .line 697
    aget-object v2, v3, v0

    iget v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-nez v2, :cond_0

    aget v2, v4, v0

    aget-object v5, v3, v0

    iget v5, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-ne v2, v5, :cond_0

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 702
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/Set;

    .line 990
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$KeySet;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$KeySet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 878
    if-nez p2, :cond_0

    .line 879
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 880
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 881
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 906
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 908
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 910
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 892
    if-nez p2, :cond_0

    .line 893
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 894
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 895
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 922
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 923
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 932
    if-nez p2, :cond_1

    .line 935
    :cond_0
    :goto_0
    return v0

    .line 934
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v1

    .line 935
    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 958
    if-nez p2, :cond_0

    .line 959
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 960
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 961
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 944
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 945
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 946
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 947
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 12

    .prologue
    .line 713
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    .line 714
    const-wide/16 v4, 0x0

    .line 715
    const-wide/16 v2, 0x0

    .line 716
    array-length v0, v7

    new-array v8, v0, [I

    .line 719
    const/4 v0, 0x0

    move v6, v0

    move-wide v0, v2

    move-wide v2, v4

    :goto_0
    const/4 v4, 0x2

    if-ge v6, v4, :cond_1

    .line 720
    const-wide/16 v4, 0x0

    .line 721
    const-wide/16 v2, 0x0

    .line 722
    const/4 v1, 0x0

    .line 723
    const/4 v0, 0x0

    :goto_1
    array-length v9, v7

    if-ge v0, v9, :cond_0

    .line 724
    aget-object v9, v7, v0

    iget v9, v9, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v10, v9

    add-long/2addr v2, v10

    .line 725
    aget-object v9, v7, v0

    iget v9, v9, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v9, v8, v0

    add-int/2addr v1, v9

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 727
    :cond_0
    if-eqz v1, :cond_8

    .line 728
    const/4 v0, 0x0

    :goto_2
    array-length v1, v7

    if-ge v0, v1, :cond_8

    .line 729
    aget-object v1, v7, v0

    iget v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v10, v1

    add-long/2addr v4, v10

    .line 730
    aget v1, v8, v0

    aget-object v9, v7, v0

    iget v9, v9, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-eq v1, v9, :cond_2

    .line 731
    const-wide/16 v4, -0x1

    move-wide v0, v4

    .line 736
    :goto_3
    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 739
    :cond_1
    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 740
    const-wide/16 v2, 0x0

    .line 741
    const/4 v0, 0x0

    :goto_4
    array-length v1, v7

    if-ge v0, v1, :cond_4

    .line 742
    aget-object v1, v7, v0

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 728
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 719
    :cond_3
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 743
    :cond_4
    const/4 v0, 0x0

    :goto_5
    array-length v1, v7

    if-ge v0, v1, :cond_5

    .line 744
    aget-object v1, v7, v0

    iget v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 745
    :cond_5
    const/4 v0, 0x0

    :goto_6
    array-length v1, v7

    if-ge v0, v1, :cond_6

    .line 746
    aget-object v1, v7, v0

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 745
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 748
    :cond_6
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-lez v0, :cond_7

    .line 749
    const v0, 0x7fffffff

    .line 751
    :goto_7
    return v0

    :cond_7
    long-to-int v0, v2

    goto :goto_7

    :cond_8
    move-wide v0, v4

    goto :goto_3
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->values:Ljava/util/Collection;

    .line 1011
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Values;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Values;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
