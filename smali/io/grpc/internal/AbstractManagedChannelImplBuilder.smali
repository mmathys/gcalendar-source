.class public abstract Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.super Lio/grpc/ManagedChannelBuilder;
.source "AbstractManagedChannelImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/AbstractManagedChannelImplBuilder$AuthorityOverridingTransportFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/internal/AbstractManagedChannelImplBuilder",
        "<TT;>;>",
        "Lio/grpc/ManagedChannelBuilder",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final IDLE_MODE_MAX_TIMEOUT_DAYS:J = 0x1eL

.field static final IDLE_MODE_MIN_TIMEOUT_MILLIS:J


# instance fields
.field private authorityOverride:Ljava/lang/String;

.field private compressorRegistry:Lio/grpc/CompressorRegistry;

.field private decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field private final directServerAddress:Ljava/net/SocketAddress;

.field private executor:Ljava/util/concurrent/Executor;

.field private idleTimeoutMillis:J

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private loadBalancerFactory:Lio/grpc/LoadBalancer$Factory;

.field private nameResolverFactory:Lio/grpc/NameResolver$Factory;

.field private final target:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->IDLE_MODE_MIN_TIMEOUT_MILLIS:J

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    .line 112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    .line 115
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->target:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    .line 117
    return-void
.end method

.method static makeTargetStringForDirectAddress(Ljava/net/SocketAddress;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 127
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "directaddress"

    const-string v2, ""

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 194
    .line 195
    return-object p0
.end method


# virtual methods
.method public build()Lio/grpc/internal/ManagedChannelImpl;
    .locals 19

    .prologue
    .line 239
    invoke-virtual/range {p0 .. p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;

    move-result-object v2

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->authorityOverride:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 241
    new-instance v9, Lio/grpc/internal/AbstractManagedChannelImplBuilder$AuthorityOverridingTransportFactory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->authorityOverride:Ljava/lang/String;

    invoke-direct {v9, v2, v3}, Lio/grpc/internal/AbstractManagedChannelImplBuilder$AuthorityOverridingTransportFactory;-><init>(Lio/grpc/internal/ClientTransportFactory;Ljava/lang/String;)V

    .line 244
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    .line 245
    if-nez v6, :cond_0

    .line 249
    invoke-static {}, Lio/grpc/NameResolverProvider;->asFactory()Lio/grpc/NameResolver$Factory;

    move-result-object v6

    .line 251
    :cond_0
    new-instance v3, Lio/grpc/internal/ManagedChannelImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->target:Ljava/lang/String;

    new-instance v5, Lio/grpc/internal/ExponentialBackoffPolicy$Provider;

    invoke-direct {v5}, Lio/grpc/internal/ExponentialBackoffPolicy$Provider;-><init>()V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->getNameResolverParams()Lio/grpc/Attributes;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->loadBalancerFactory:Lio/grpc/LoadBalancer$Factory;

    .line 257
    invoke-static {}, Lio/grpc/DummyLoadBalancerFactory;->getInstance()Lio/grpc/DummyLoadBalancerFactory;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/grpc/LoadBalancer$Factory;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 259
    invoke-static {}, Lio/grpc/DecompressorRegistry;->getDefaultInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/grpc/DecompressorRegistry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 260
    invoke-static {}, Lio/grpc/CompressorRegistry;->getDefaultInstance()Lio/grpc/CompressorRegistry;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/grpc/CompressorRegistry;

    sget-object v12, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    sget-object v13, Lio/grpc/internal/GrpcUtil;->STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->executor:Ljava/util/concurrent/Executor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->userAgent:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lio/grpc/internal/ManagedChannelImpl;-><init>(Ljava/lang/String;Lio/grpc/internal/BackoffPolicy$Provider;Lio/grpc/NameResolver$Factory;Lio/grpc/Attributes;Lio/grpc/LoadBalancer$Factory;Lio/grpc/internal/ClientTransportFactory;Lio/grpc/DecompressorRegistry;Lio/grpc/CompressorRegistry;Lio/grpc/internal/SharedResourceHolder$Resource;Lcom/google/common/base/Supplier;JLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;)V

    .line 251
    return-object v3

    :cond_1
    move-object v9, v2

    goto :goto_0
.end method

.method protected abstract buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;
.end method

.method final getIdleTimeoutMillis()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    return-wide v0
.end method

.method protected getNameResolverParams()Lio/grpc/Attributes;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-object v0
.end method

.method public final userAgent(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 200
    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->userAgent:Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method
