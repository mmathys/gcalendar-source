.class public Lio/grpc/okhttp/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;,
        Lio/grpc/okhttp/internal/Platform$JdkWithJettyBootPlatform;,
        Lio/grpc/okhttp/internal/Platform$Android;
    }
.end annotation


# static fields
.field private static final ANDROID_SECURITY_PROVIDERS:[Ljava/lang/String;

.field private static final PLATFORM:Lio/grpc/okhttp/internal/Platform;

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final sslProvider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const-class v0, Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/internal/Platform;->logger:Ljava/util/logging/Logger;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms.org.conscrypt.OpenSSLProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.org.conscrypt.OpenSSLProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "org.conscrypt.OpenSSLProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider"

    aput-object v2, v0, v1

    sput-object v0, Lio/grpc/okhttp/internal/Platform;->ANDROID_SECURITY_PROVIDERS:[Ljava/lang/String;

    .line 75
    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->findPlatform()Lio/grpc/okhttp/internal/Platform;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/internal/Platform;->PLATFORM:Lio/grpc/okhttp/internal/Platform;

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lio/grpc/okhttp/internal/Platform;->sslProvider:Ljava/security/Provider;

    .line 85
    return-void
.end method

.method public static concatLengthPrefixed(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/Protocol;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 426
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 427
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 428
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/Protocol;

    .line 429
    sget-object v4, Lio/grpc/okhttp/internal/Protocol;->HTTP_1_0:Lio/grpc/okhttp/internal/Protocol;

    if-ne v0, v4, :cond_0

    .line 427
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 431
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_1

    .line 433
    :cond_1
    invoke-virtual {v2}, Lokio/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static findPlatform()Lio/grpc/okhttp/internal/Platform;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 135
    sget-boolean v0, Lio/grpc/internal/GrpcUtil;->IS_RESTRICTED_APPENGINE:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->getAppEngineProvider()Ljava/security/Provider;

    move-result-object v7

    .line 138
    :goto_0
    if-eqz v7, :cond_1

    .line 140
    new-instance v1, Lio/grpc/okhttp/internal/OptionalMethod;

    const-string v0, "setUseSessionTickets"

    new-array v2, v8, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v9

    invoke-direct {v1, v4, v0, v2}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 142
    new-instance v2, Lio/grpc/okhttp/internal/OptionalMethod;

    const-string v0, "setHostname"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v9

    invoke-direct {v2, v4, v0, v3}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 146
    new-instance v5, Lio/grpc/okhttp/internal/OptionalMethod;

    const-class v0, [B

    const-string v3, "getAlpnSelectedProtocol"

    new-array v6, v9, [Ljava/lang/Class;

    invoke-direct {v5, v0, v3, v6}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 148
    new-instance v6, Lio/grpc/okhttp/internal/OptionalMethod;

    const-string v0, "setAlpnProtocols"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v8, [B

    aput-object v8, v3, v9

    invoke-direct {v6, v4, v0, v3}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 153
    :try_start_0
    const-string v0, "android.net.TrafficStats"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 154
    const-string v3, "tagSocket"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/net/Socket;

    aput-object v10, v8, v9

    invoke-virtual {v0, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 155
    :try_start_1
    const-string v8, "untagSocket"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/net/Socket;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 159
    :goto_1
    new-instance v0, Lio/grpc/okhttp/internal/Platform$Android;

    invoke-direct/range {v0 .. v7}, Lio/grpc/okhttp/internal/Platform$Android;-><init>(Lio/grpc/okhttp/internal/OptionalMethod;Lio/grpc/okhttp/internal/OptionalMethod;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/grpc/okhttp/internal/OptionalMethod;Lio/grpc/okhttp/internal/OptionalMethod;Ljava/security/Provider;)V

    .line 185
    :goto_2
    return-object v0

    .line 137
    :cond_0
    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->getAndroidSecurityProvider()Ljava/security/Provider;

    move-result-object v7

    goto :goto_0

    .line 163
    :cond_1
    :try_start_2
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 170
    :try_start_3
    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    .line 171
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 172
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$Provider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 173
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "$ClientProvider"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 174
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "$ServerProvider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 175
    const-string v0, "put"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljavax/net/ssl/SSLSocket;

    aput-object v8, v2, v7

    const/4 v7, 0x1

    aput-object v1, v2, v7

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 176
    const-string v0, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljavax/net/ssl/SSLSocket;

    aput-object v8, v2, v7

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 177
    const-string v0, "remove"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljavax/net/ssl/SSLSocket;

    aput-object v9, v7, v8

    invoke-virtual {v3, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 178
    new-instance v0, Lio/grpc/okhttp/internal/Platform$JdkWithJettyBootPlatform;

    invoke-direct/range {v0 .. v6}, Lio/grpc/okhttp/internal/Platform$JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;Ljava/security/Provider;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 181
    :catch_0
    move-exception v0

    .line 185
    :goto_3
    new-instance v0, Lio/grpc/okhttp/internal/Platform;

    invoke-direct {v0, v6}, Lio/grpc/okhttp/internal/Platform;-><init>(Ljava/security/Provider;)V

    goto :goto_2

    .line 164
    :catch_1
    move-exception v0

    .line 165
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 182
    :catch_2
    move-exception v0

    goto :goto_3

    .line 157
    :catch_3
    move-exception v0

    move-object v3, v4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 156
    :catch_5
    move-exception v0

    move-object v3, v4

    goto/16 :goto_1

    :catch_6
    move-exception v0

    goto/16 :goto_1
.end method

.method public static get()Lio/grpc/okhttp/internal/Platform;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lio/grpc/okhttp/internal/Platform;->PLATFORM:Lio/grpc/okhttp/internal/Platform;

    return-object v0
.end method

.method private static getAndroidSecurityProvider()Ljava/security/Provider;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 205
    sget-object v4, Lio/grpc/okhttp/internal/Platform;->ANDROID_SECURITY_PROVIDERS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    .line 206
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v7

    .line 207
    array-length v8, v7

    move v1, v2

    :goto_1
    if-ge v1, v8, :cond_1

    aget-object v0, v7, v1

    .line 208
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 209
    sget-object v1, Lio/grpc/okhttp/internal/Platform;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Found registered provider {0}"

    invoke-virtual {v1, v2, v3, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    :goto_2
    return-object v0

    .line 207
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 205
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 214
    :cond_2
    sget-object v0, Lio/grpc/okhttp/internal/Platform;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Unable to find Conscrypt"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static getAppEngineProvider()Ljava/security/Provider;
    .locals 3

    .prologue
    .line 194
    :try_start_0
    const-string v0, "org.conscrypt.OpenSSLProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to load conscrypt security provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    return-void
.end method

.method public getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lio/grpc/okhttp/internal/Platform;->sslProvider:Ljava/security/Provider;

    return-object v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method
