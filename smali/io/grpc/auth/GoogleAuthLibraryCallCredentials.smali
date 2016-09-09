.class final Lio/grpc/auth/GoogleAuthLibraryCallCredentials;
.super Ljava/lang/Object;
.source "GoogleAuthLibraryCallCredentials.java"

# interfaces
.implements Lio/grpc/CallCredentials;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;
    }
.end annotation


# static fields
.field private static final jwtHelper:Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field final creds:Lcom/google/auth/Credentials;

.field private lastHeaders:Lio/grpc/Metadata;

.field private lastMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->log:Ljava/util/logging/Logger;

    .line 67
    const-class v0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->createJwtHelperOrNull(Ljava/lang/ClassLoader;)Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;

    move-result-object v0

    sput-object v0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->jwtHelper:Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;

    .line 67
    return-void
.end method

.method constructor <init>(Lcom/google/auth/Credentials;Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "creds"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p2, p1}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->tryServiceAccountToJwt(Lcom/google/auth/Credentials;)Lcom/google/auth/Credentials;

    move-result-object p1

    .line 86
    :cond_0
    iput-object p1, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->creds:Lcom/google/auth/Credentials;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lio/grpc/auth/GoogleAuthLibraryCallCredentials;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->lastMetadata:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$002(Lio/grpc/auth/GoogleAuthLibraryCallCredentials;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->lastMetadata:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$100(Lio/grpc/auth/GoogleAuthLibraryCallCredentials;)Lio/grpc/Metadata;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->lastHeaders:Lio/grpc/Metadata;

    return-object v0
.end method

.method static synthetic access$102(Lio/grpc/auth/GoogleAuthLibraryCallCredentials;Lio/grpc/Metadata;)Lio/grpc/Metadata;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->lastHeaders:Lio/grpc/Metadata;

    return-object p1
.end method

.method static synthetic access$200(Ljava/util/Map;)Lio/grpc/Metadata;
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->toHeaders(Ljava/util/Map;)Lio/grpc/Metadata;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static createJwtHelperOrNull(Ljava/lang/ClassLoader;)Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 197
    :try_start_0
    const-string v0, "com.google.auth.oauth2.ServiceAccountCredentials"

    const/4 v2, 0x0

    .line 198
    invoke-static {v0, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 203
    :try_start_1
    new-instance v0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;

    invoke-direct {v0, v2, p0}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :goto_0
    return-object v0

    .line 199
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 200
    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    .line 206
    sget-object v2, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Failed to create JWT helper. This is unexpected"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 207
    goto :goto_0
.end method

.method private static removePort(Ljava/net/URI;)Ljava/net/URI;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    .line 164
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    sget-object v1, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    const-string v2, "Unable to construct service URI after removing port"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 167
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v0

    throw v0
.end method

.method private static serviceUri(Ljava/lang/String;Lio/grpc/MethodDescriptor;)Ljava/net/URI;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/MethodDescriptor",
            "<**>;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    sget-object v0, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    const-string v1, "Channel has no authority"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v0

    throw v0

    .line 146
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/MethodDescriptor;->extractFullServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "https"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const/16 v2, 0x1bb

    if-ne v1, v2, :cond_1

    .line 156
    invoke-static {v0}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->removePort(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    .line 158
    :cond_1
    return-object v0

    .line 146
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    sget-object v1, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    const-string v2, "Unable to construct service URI for auth"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 152
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v0

    throw v0
.end method

.method private static toHeaders(Ljava/util/Map;)Lio/grpc/Metadata;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lio/grpc/Metadata;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v1, Lio/grpc/Metadata;

    invoke-direct {v1}, Lio/grpc/Metadata;-><init>()V

    .line 173
    if-eqz p0, :cond_2

    .line 174
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    const-string v3, "-bin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    sget-object v3, Lio/grpc/Metadata;->BINARY_BYTE_MARSHALLER:Lio/grpc/Metadata$BinaryMarshaller;

    invoke-static {v0, v3}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$BinaryMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v3

    .line 177
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_1
    sget-object v3, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    invoke-static {v0, v3}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v3

    .line 182
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    invoke-virtual {v1, v3, v0}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    :cond_2
    return-object v1
.end method


# virtual methods
.method public applyRequestMetadata(Lio/grpc/MethodDescriptor;Lio/grpc/Attributes;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor",
            "<**>;",
            "Lio/grpc/Attributes;",
            "Ljava/util/concurrent/Executor;",
            "Lio/grpc/CallCredentials$MetadataApplier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->ATTR_AUTHORITY:Lio/grpc/Attributes$Key;

    invoke-virtual {p2, v0}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "authority"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    :try_start_0
    invoke-static {v0, p1}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->serviceUri(Ljava/lang/String;Lio/grpc/MethodDescriptor;)Ljava/net/URI;
    :try_end_0
    .catch Lio/grpc/StatusException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    new-instance v1, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;

    invoke-direct {v1, p0, v0, p4}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$1;-><init>(Lio/grpc/auth/GoogleAuthLibraryCallCredentials;Ljava/net/URI;Lio/grpc/CallCredentials$MetadataApplier;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Lio/grpc/StatusException;->getStatus()Lio/grpc/Status;

    move-result-object v0

    invoke-interface {p4, v0}, Lio/grpc/CallCredentials$MetadataApplier;->fail(Lio/grpc/Status;)V

    goto :goto_0
.end method
