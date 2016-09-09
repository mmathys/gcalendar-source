.class public final Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;
.super Ljava/lang/Object;
.source "HprofAnalyzer.java"


# static fields
.field static final NON_LEAK_CONTAINER:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final NON_LEAK_ROOT_TAGS:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hprofFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "boolean"

    aput-object v1, v0, v3

    const-string v1, "boolean[]"

    aput-object v1, v0, v4

    const-string v1, "boolean[][]"

    aput-object v1, v0, v5

    const-string v1, "byte"

    aput-object v1, v0, v6

    const-string v1, "byte[]"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "byte[][]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "byte[][][]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "char"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "char[]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "char[][]"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "short"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "short[]"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "short[][]"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "int[]"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "int[][]"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "int[][][]"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "long"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "long[]"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "long[][]"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "float[]"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "float[][]"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "double"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "double[]"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "double[][]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "java.lang.Class"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "java.lang.Class[]"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "java.lang.Class[][]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "java.lang.Byte"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "java.lang.Byte[]"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "java.lang.Character"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "java.lang.Character[]"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "java.lang.Boolean"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "java.lang.Boolean[]"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "java.lang.Short"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "java.lang.Short[]"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "java.lang.Integer"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "java.lang.Integer[]"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "java.lang.Long"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "java.lang.Long[]"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "java.lang.Float"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "java.lang.Float[]"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "java.lang.Double"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "java.lang.Double[]"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "java.lang.String"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "java.lang.String[]"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "java.lang.String[][]"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "java.lang.String[][][]"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->NON_LEAK_CONTAINER:Ljava/lang/Iterable;

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x8b

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x8a

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x89

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0xff

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x90

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    .line 83
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->NON_LEAK_ROOT_TAGS:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->hprofFile:Ljava/io/File;

    .line 95
    return-void
.end method

.method private bfs(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;Ljava/util/Deque;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/performance/primes/hprof/ParseContext;",
            "Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;",
            "Ljava/util/Deque",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    :cond_0
    invoke-interface {p3}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    invoke-interface {p3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;

    .line 219
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->getChildCount(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;)I

    move-result v3

    .line 220
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 221
    invoke-virtual {v0, p1, v2}, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->getChildValue(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;I)I

    move-result v1

    .line 222
    invoke-virtual {p2, v1}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;

    .line 223
    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->parent:Lcom/google/android/libraries/performance/primes/hprof/HprofObject;

    if-nez v4, :cond_1

    iget v4, v1, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 224
    invoke-direct {p0, v1}, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->isRef(Lcom/google/android/libraries/performance/primes/hprof/HprofObject;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 225
    iput-object v0, v1, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->parent:Lcom/google/android/libraries/performance/primes/hprof/HprofObject;

    .line 226
    invoke-interface {p3, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 220
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 230
    :cond_2
    return-void
.end method

.method private buildLeakPath(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/HprofObject;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    :cond_0
    :goto_0
    invoke-virtual {p2, p1}, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->describeType(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p2, p1}, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->getId(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;)I

    move-result v1

    .line 187
    iget-object p2, p2, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->parent:Lcom/google/android/libraries/performance/primes/hprof/HprofObject;

    .line 188
    if-eqz p2, :cond_1

    .line 189
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p2, p1, v1}, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->findChildIndex(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;I)I

    move-result v1

    .line 191
    if-ltz v1, :cond_0

    .line 192
    invoke-virtual {p2, p1, v1}, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->getChildName(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractLeaks(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/performance/primes/hprof/ParseContext;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;

    .line 174
    iget-object v3, v0, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->parent:Lcom/google/android/libraries/performance/primes/hprof/HprofObject;

    if-eqz v3, :cond_0

    instance-of v3, v0, Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;

    if-eqz v3, :cond_0

    .line 175
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->buildLeakPath(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/HprofObject;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_1
    return-object v1
.end method

.method private isRef(Lcom/google/android/libraries/performance/primes/hprof/HprofObject;)Z
    .locals 1

    .prologue
    .line 233
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;

    iget-object v0, p1, Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;->clazz:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    iget v0, v0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareContext()Lcom/google/android/libraries/performance/primes/hprof/ParseContext;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    .line 157
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->hprofFile:Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 159
    :try_start_2
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    .line 160
    new-instance v2, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    invoke-direct {v2, v1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 165
    :cond_0
    if-eqz v6, :cond_1

    .line 166
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 160
    :cond_1
    return-object v2

    .line 162
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 165
    :cond_2
    if-eqz v2, :cond_3

    .line 166
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v0

    .line 162
    :catchall_1
    move-exception v0

    move-object v2, v6

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v2, v6

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_0
.end method

.method private traverse(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/ParseResult;)V
    .locals 4

    .prologue
    .line 206
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 207
    invoke-virtual {p2}, Lcom/google/android/libraries/performance/primes/hprof/ParseResult;->getRoots()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;

    .line 208
    invoke-direct {p0, v0}, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->isRef(Lcom/google/android/libraries/performance/primes/hprof/HprofObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/libraries/performance/primes/hprof/ParseResult;->getClassInstances()Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->bfs(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;Ljava/util/Deque;)V

    .line 213
    return-void
.end method


# virtual methods
.method public checkTrackedObjectsForLeak(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->prepareContext()Lcom/google/android/libraries/performance/primes/hprof/ParseContext;

    move-result-object v1

    .line 104
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 105
    sget-object v2, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->NON_LEAK_ROOT_TAGS:Ljava/lang/Iterable;

    sget-object v3, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->NON_LEAK_CONTAINER:Ljava/lang/Iterable;

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/libraries/performance/primes/hprof/HprofParser;->parseBuffer(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/android/libraries/performance/primes/hprof/ParseResult;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lcom/google/android/libraries/performance/primes/hprof/ParseResult;->getInstancesFound()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;

    .line 111
    const-string v5, "referent"

    invoke-virtual {v0, v1, v5}, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;->getChildValue(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Ljava/lang/String;)I

    move-result v0

    .line 112
    invoke-virtual {v2}, Lcom/google/android/libraries/performance/primes/hprof/ParseResult;->getClassInstances()Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    invoke-direct {p0, v1, v2}, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->traverse(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/ParseResult;)V

    .line 121
    invoke-direct {p0, v1, v3}, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->extractLeaks(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 123
    :goto_1
    return-object v0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
