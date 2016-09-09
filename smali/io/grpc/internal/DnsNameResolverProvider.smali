.class public final Lio/grpc/internal/DnsNameResolverProvider;
.super Lio/grpc/NameResolverProvider;
.source "DnsNameResolverProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lio/grpc/NameResolverProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "dns"

    return-object v0
.end method

.method protected isAvailable()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newNameResolver(Ljava/net/URI;Lio/grpc/Attributes;)Lio/grpc/NameResolver;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/DnsNameResolverProvider;->newNameResolver(Ljava/net/URI;Lio/grpc/Attributes;)Lio/grpc/internal/DnsNameResolver;

    move-result-object v0

    return-object v0
.end method

.method public newNameResolver(Ljava/net/URI;Lio/grpc/Attributes;)Lio/grpc/internal/DnsNameResolver;
    .locals 6

    .prologue
    .line 62
    const-string v0, "dns"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetPath"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "the path component (%s) of the target (%s) must start with \'/\'"

    invoke-static {v1, v2, v0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    new-instance v0, Lio/grpc/internal/DnsNameResolver;

    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    sget-object v5, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lio/grpc/internal/DnsNameResolver;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;Lio/grpc/internal/SharedResourceHolder$Resource;Lio/grpc/internal/SharedResourceHolder$Resource;)V

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected priority()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x5

    return v0
.end method
