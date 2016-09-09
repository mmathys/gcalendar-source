.class Lcom/google/common/collect/MapMakerInternalMap;
.super Ljava/util/AbstractMap;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;,
        Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;,
        Lcom/google/common/collect/MapMakerInternalMap$SafeToArraySet;,
        Lcom/google/common/collect/MapMakerInternalMap$EntrySet;,
        Lcom/google/common/collect/MapMakerInternalMap$Values;,
        Lcom/google/common/collect/MapMakerInternalMap$KeySet;,
        Lcom/google/common/collect/MapMakerInternalMap$EntryIterator;,
        Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$ValueIterator;,
        Lcom/google/common/collect/MapMakerInternalMap$KeyIterator;,
        Lcom/google/common/collect/MapMakerInternalMap$HashIterator;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;,
        Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;,
        Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;,
        Lcom/google/common/collect/MapMakerInternalMap$Segment;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;,
        Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$StrongValueEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;,
        Lcom/google/common/collect/MapMakerInternalMap$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
        "<TK;TV;TE;>;S:",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment",
        "<TK;TV;TE;TS;>;>",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final UNSET_WEAK_VALUE_REFERENCE:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5L


# instance fields
.field final concurrencyLevel:I

.field final transient entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper",
            "<TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final transient segmentMask:I

.field final transient segmentShift:I

.field final transient segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 836
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$1;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->UNSET_WEAK_VALUE_REFERENCE:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker;",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper",
            "<TK;TV;TE;TS;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 160
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 161
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v0

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    .line 163
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getKeyEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 164
    iput-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 166
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getInitialCapacity()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v0, v1

    move v2, v3

    .line 172
    :goto_0
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    if-ge v0, v5, :cond_0

    .line 173
    add-int/lit8 v2, v2, 0x1

    .line 174
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    rsub-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->segmentShift:I

    .line 177
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->segmentMask:I

    .line 179
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->newSegmentArray(I)[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 181
    div-int v2, v4, v0

    .line 182
    mul-int/2addr v0, v2

    if-ge v0, v4, :cond_3

    .line 183
    add-int/lit8 v0, v2, 0x1

    .line 187
    :goto_1
    if-ge v1, v0, :cond_1

    .line 188
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    if-ge v3, v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap;->createSegment(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v2

    aput-object v2, v0, v3

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 194
    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method static synthetic access$800(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Lcom/google/common/collect/MapMakerInternalMap;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMakerInternalMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMaker;",
            ")",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;+",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;*>;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getValueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_0

    .line 200
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    .line 202
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->instance()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    .line 217
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getValueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_1

    .line 206
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    .line 208
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->instance()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getValueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_2

    .line 212
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    .line 214
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->instance()Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getValueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_3

    .line 217
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    .line 219
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->instance()Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    goto :goto_0

    .line 221
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static rehash(I)I
    .locals 3

    .prologue
    .line 891
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 892
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 893
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 894
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 895
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 896
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method private static toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2632
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2633
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 2634
    return-object v0
.end method

.method static unsetWeakValueReference()Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;TE;>;>()",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;TE;>;"
        }
    .end annotation

    .prologue
    .line 369
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->UNSET_WEAK_VALUE_REFERENCE:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 2276
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 2277
    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clear()V

    .line 2276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2279
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 2163
    if-nez p1, :cond_0

    .line 2164
    const/4 v0, 0x0

    .line 2167
    :goto_0
    return v0

    .line 2166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2167
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    .line 2172
    if-nez p1, :cond_0

    .line 2173
    const/4 v0, 0x0

    .line 2205
    :goto_0
    return v0

    .line 2181
    :cond_0
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 2182
    const-wide/16 v4, -0x1

    .line 2183
    const/4 v0, 0x0

    move v6, v0

    move-wide v8, v4

    :goto_1
    const/4 v0, 0x3

    if-ge v6, v0, :cond_5

    .line 2184
    const-wide/16 v2, 0x0

    .line 2185
    array-length v10, v7

    const/4 v0, 0x0

    move-wide v4, v2

    move v2, v0

    :goto_2
    if-ge v2, v10, :cond_4

    aget-object v3, v7, v2

    .line 2187
    iget v0, v3, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2189
    iget-object v11, v3, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2190
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 2191
    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    :goto_4
    if-eqz v0, :cond_2

    .line 2192
    invoke-virtual {v3, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v12

    .line 2193
    if-eqz v12, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v13

    invoke-virtual {v13, p1, v12}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2194
    const/4 v0, 0x1

    goto :goto_0

    .line 2191
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    goto :goto_4

    .line 2190
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2198
    :cond_3
    iget v0, v3, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v0, v0

    add-long/2addr v4, v0

    .line 2185
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 2200
    :cond_4
    cmp-long v0, v4, v8

    if-nez v0, :cond_6

    .line 2205
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 2183
    :cond_6
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-wide v8, v4

    goto :goto_1
.end method

.method copyEntry(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 905
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    .line 906
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method createSegment(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;TE;TS;>;"
        }
    .end annotation

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    .line 2302
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2142
    if-nez p1, :cond_0

    .line 2143
    const/4 v0, 0x0

    .line 2146
    :goto_0
    return-object v0

    .line 2145
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2146
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 954
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 961
    :cond_0
    :goto_0
    return-object v0

    .line 957
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 958
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 961
    goto :goto_0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 911
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->rehash(I)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 2107
    .line 2108
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move v0, v1

    move-wide v2, v4

    .line 2109
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 2110
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v7, :cond_1

    .line 2127
    :cond_0
    :goto_1
    return v1

    .line 2113
    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 2109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2116
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 2117
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 2118
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-nez v7, :cond_0

    .line 2121
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v8, v7

    sub-long/2addr v2, v8

    .line 2117
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2123
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 2127
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method isLiveForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)Z"
        }
    .end annotation

    .prologue
    .line 931
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValueForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    .line 2286
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap$KeySet;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method keyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->keyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    return-object v0
.end method

.method final newSegmentArray(I)[Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;TE;TS;>;"
        }
    .end annotation

    .prologue
    .line 966
    new-array v0, p1, [Lcom/google/common/collect/MapMakerInternalMap$Segment;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2211
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2214
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2228
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2231
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2220
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2223
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 921
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    .line 922
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;I)Z

    .line 923
    return-void
.end method

.method reclaimValue(Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 915
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;->getEntry()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 916
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v1

    .line 917
    invoke-virtual {p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->reclaimValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)Z

    .line 918
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2236
    if-nez p1, :cond_0

    .line 2237
    const/4 v0, 0x0

    .line 2240
    :goto_0
    return-object v0

    .line 2239
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2240
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 2246
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2247
    :cond_0
    const/4 v0, 0x0

    .line 2250
    :goto_0
    return v0

    .line 2249
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2250
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2268
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2269
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2271
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2256
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    if-nez p2, :cond_0

    .line 2259
    const/4 v0, 0x0

    .line 2262
    :goto_0
    return v0

    .line 2261
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2262
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;TE;TS;>;"
        }
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 2132
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 2133
    const-wide/16 v2, 0x0

    .line 2134
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 2135
    aget-object v4, v1, v0

    iget v4, v4, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 2134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2137
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method valueEquivalence()Lcom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    .line 2294
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap$Values;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 2642
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 2643
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->keyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 2644
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 2646
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v4

    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;ILjava/util/concurrent/ConcurrentMap;)V

    .line 2642
    return-object v0
.end method
