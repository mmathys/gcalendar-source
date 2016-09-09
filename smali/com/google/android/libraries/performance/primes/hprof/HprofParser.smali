.class final Lcom/google/android/libraries/performance/primes/hprof/HprofParser;
.super Ljava/lang/Object;
.source "HprofParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;
    }
.end annotation


# instance fields
.field private final actionsForClass:Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;",
            ">;"
        }
    .end annotation
.end field

.field private final buffer:Ljava/nio/ByteBuffer;

.field private final classes:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofClass;",
            ">;"
        }
    .end annotation
.end field

.field private final id2Actions:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;",
            ">;"
        }
    .end annotation
.end field

.field private final instances:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;"
        }
    .end annotation
.end field

.field private final instancesFound:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

.field private final rootIds:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

.field private final rootTagsToExclude:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

.field private final stringPositions:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/performance/primes/hprof/ParseContext;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->stringPositions:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    .line 44
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->rootIds:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    .line 45
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->classes:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    .line 46
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->instances:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    .line 47
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->instancesFound:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->rootTagsToExclude:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    .line 56
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->id2Actions:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    .line 57
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->actionsForClass:Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;

    .line 74
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    .line 76
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->actionsForClass:Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;

    const-class v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->CLASSIFY_REF:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;->putIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    if-eqz p3, :cond_0

    .line 78
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->actionsForClass:Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;

    sget-object v3, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->EXCLUDE_INSTANCE:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;->putIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_0
    if-eqz p4, :cond_1

    .line 83
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->actionsForClass:Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;

    sget-object v3, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->FIND_INSTANCE:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;->putIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    :cond_1
    if-eqz p2, :cond_2

    .line 88
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->rootTagsToExclude:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->putIfAbsent(II)I

    goto :goto_2

    .line 92
    :cond_2
    return-void
.end method

.method static parseBuffer(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/android/libraries/performance/primes/hprof/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/performance/primes/hprof/ParseContext;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/performance/primes/hprof/ParseResult;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;-><init>(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 68
    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parse()Lcom/google/android/libraries/performance/primes/hprof/ParseResult;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method private parseClassInstance()V
    .locals 6

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 244
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    move-result v3

    .line 245
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 246
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    move-result v1

    .line 247
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 248
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->classes:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    .line 249
    iget-object v5, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->id2Actions:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-virtual {v5, v1}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    .line 250
    if-eqz v0, :cond_1

    sget-object v5, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->EXCLUDE_INSTANCE:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    if-eq v1, v5, :cond_1

    .line 251
    new-instance v5, Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;

    invoke-direct {v5, v2, v0}, Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;-><init>(ILcom/google/android/libraries/performance/primes/hprof/HprofClass;)V

    .line 252
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->instances:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->putIfAbsent(ILjava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v2, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->FIND_INSTANCE:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    if-ne v1, v2, :cond_1

    .line 255
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->getClassName(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;)Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->instancesFound:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 257
    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->instancesFound:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->skipBytes(I)V

    .line 265
    return-void
.end method

.method private parseClassName()V
    .locals 6

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 175
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 176
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    move-result v1

    .line 178
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 179
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->stringPositions:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v3}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->get(I)I

    move-result v2

    .line 180
    new-instance v3, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    invoke-direct {v3, v0, v2}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;-><init>(II)V

    .line 181
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->classes:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->putIfAbsent(ILjava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getStringLength(I)I

    move-result v0

    .line 185
    iget-object v4, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v4, v2}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getStringBytesPos(I)I

    move-result v2

    .line 186
    iget-object v4, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->actionsForClass:Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;

    iget-object v5, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5, v2, v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;->get(Ljava/nio/ByteBuffer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    .line 187
    sget-object v2, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->CLASSIFY_REF:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    if-ne v0, v2, :cond_1

    .line 188
    iget v0, v3, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v3, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->flags:I

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    if-eqz v0, :cond_0

    .line 190
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->id2Actions:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->putIfAbsent(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private parseHeapDump()V
    .locals 5

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 200
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->isRootTag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getRootTagSize(I)I

    move-result v2

    .line 202
    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->rootTagsToExclude:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    invoke-virtual {v3, v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->skipBytes(I)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->rootIds:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    iget-object v4, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v4}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->putIfAbsent(II)I

    .line 206
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v3}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getIdSize()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->skipBytes(I)V

    goto :goto_0

    .line 209
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 234
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    move-result v0

    .line 212
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->classes:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->classes:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    iget-object v4, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->stringPositions:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->parse(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;)V

    goto :goto_0

    .line 216
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseClassInstance()V

    goto :goto_0

    .line 220
    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseObjectArray()V

    goto/16 :goto_0

    .line 225
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->skipPrimitiveArray()V

    goto/16 :goto_0

    .line 229
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 230
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    goto/16 :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkState(Z)V

    .line 239
    return-void

    .line 238
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 209
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_2
        0x23 -> :sswitch_3
        0xc3 -> :sswitch_3
        0xfe -> :sswitch_4
    .end sparse-switch
.end method

.method private parseObjectArray()V
    .locals 6

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 270
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    move-result v2

    .line 271
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 272
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 273
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    move-result v4

    .line 274
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->id2Actions:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    .line 275
    iget-object v5, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->classes:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-virtual {v5, v4}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->EXCLUDE_INSTANCE:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    if-eq v0, v4, :cond_0

    .line 276
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/HprofArrayInstance;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/performance/primes/hprof/HprofArrayInstance;-><init>(I)V

    .line 277
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->instances:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->putIfAbsent(ILjava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getIdSize()I

    move-result v1

    mul-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->skipBytes(I)V

    .line 280
    return-void
.end method

.method private parseString()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 156
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 157
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->stringPositions:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v3}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->putIfAbsent(II)I

    .line 158
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v2}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getIdSize()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->skipBytes(I)V

    .line 159
    return-void
.end method

.method private skipPrimitiveArray()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    .line 298
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 299
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 301
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v3, v1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getTypeSize(I)I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->skipBytes(I)V

    .line 302
    return-void
.end method


# virtual methods
.method parse()Lcom/google/android/libraries/performance/primes/hprof/ParseResult;
    .locals 5

    .prologue
    .line 96
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 99
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Length too large to parse."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseContext:Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->skipBytes(I)V

    goto :goto_0

    .line 106
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseString()V

    goto :goto_0

    .line 110
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseClassName()V

    goto :goto_0

    .line 115
    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseHeapDump()V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->classes:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->enumerator()Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;

    move-result-object v1

    .line 124
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v1}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->resolveSuperClasses()V

    goto :goto_1

    .line 127
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->rootIds:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->enumerator()Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;

    move-result-object v2

    .line 129
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->next()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    invoke-virtual {v2}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->getKey()I

    move-result v3

    .line 132
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->classes:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->instances:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;

    if-eqz v0, :cond_3

    .line 133
    :cond_4
    iget v3, v0, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->flags:I

    .line 134
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->stringPositions:Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->clear()V

    .line 138
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->id2Actions:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->clear()V

    .line 140
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/ParseResult;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->classes:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->instances:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    iget-object v4, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->instancesFound:Ljava/util/Map;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/libraries/performance/primes/hprof/ParseResult;-><init>(Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;Ljava/util/List;Ljava/util/Map;)V

    return-object v0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xc -> :sswitch_2
        0x1c -> :sswitch_2
    .end sparse-switch
.end method
