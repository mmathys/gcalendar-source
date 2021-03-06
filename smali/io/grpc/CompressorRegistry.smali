.class public final Lio/grpc/CompressorRegistry;
.super Ljava/lang/Object;
.source "CompressorRegistry.java"


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/CompressorRegistry;


# instance fields
.field private final compressors:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lio/grpc/Compressor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lio/grpc/CompressorRegistry;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/grpc/Compressor;

    const/4 v2, 0x0

    new-instance v3, Lio/grpc/Codec$Gzip;

    invoke-direct {v3}, Lio/grpc/Codec$Gzip;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lio/grpc/CompressorRegistry;-><init>([Lio/grpc/Compressor;)V

    sput-object v0, Lio/grpc/CompressorRegistry;->DEFAULT_INSTANCE:Lio/grpc/CompressorRegistry;

    return-void
.end method

.method varargs constructor <init>([Lio/grpc/Compressor;)V
    .locals 5

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/CompressorRegistry;->compressors:Ljava/util/concurrent/ConcurrentMap;

    .line 68
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 69
    iget-object v3, p0, Lio/grpc/CompressorRegistry;->compressors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Lio/grpc/Compressor;->getMessageEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/CompressorRegistry;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lio/grpc/CompressorRegistry;->DEFAULT_INSTANCE:Lio/grpc/CompressorRegistry;

    return-object v0
.end method


# virtual methods
.method public lookupCompressor(Ljava/lang/String;)Lio/grpc/Compressor;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lio/grpc/CompressorRegistry;->compressors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Compressor;

    return-object v0
.end method
