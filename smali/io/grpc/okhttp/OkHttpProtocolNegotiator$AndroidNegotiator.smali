.class final Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;
.super Lio/grpc/okhttp/OkHttpProtocolNegotiator;
.source "OkHttpProtocolNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AndroidNegotiator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;
    }
.end annotation


# static fields
.field private static final DEFAULT_TLS_EXTENSION_TYPE:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

.field private static final GET_ALPN_SELECTED_PROTOCOL:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final GET_NPN_SELECTED_PROTOCOL:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_ALPN_PROTOCOLS:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_HOSTNAME:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_NPN_PROTOCOLS:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_USE_SESSION_TICKETS:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final tlsExtensionType:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    new-instance v0, Lio/grpc/okhttp/internal/OptionalMethod;

    const-string v1, "setUseSessionTickets"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-direct {v0, v6, v1, v2}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_USE_SESSION_TICKETS:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 135
    new-instance v0, Lio/grpc/okhttp/internal/OptionalMethod;

    const-string v1, "setHostname"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {v0, v6, v1, v2}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_HOSTNAME:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 138
    new-instance v0, Lio/grpc/okhttp/internal/OptionalMethod;

    const-class v1, [B

    const-string v2, "getAlpnSelectedProtocol"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->GET_ALPN_SELECTED_PROTOCOL:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 141
    new-instance v0, Lio/grpc/okhttp/internal/OptionalMethod;

    const-string v1, "setAlpnProtocols"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, [B

    aput-object v3, v2, v4

    invoke-direct {v0, v6, v1, v2}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_ALPN_PROTOCOLS:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 144
    new-instance v0, Lio/grpc/okhttp/internal/OptionalMethod;

    const-class v1, [B

    const-string v2, "getNpnSelectedProtocol"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->GET_NPN_SELECTED_PROTOCOL:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 147
    new-instance v0, Lio/grpc/okhttp/internal/OptionalMethod;

    const-string v1, "setNpnProtocols"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, [B

    aput-object v3, v2, v4

    invoke-direct {v0, v6, v1, v2}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_NPN_PROTOCOLS:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 150
    const-class v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;

    .line 151
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->pickTlsExtensionType(Ljava/lang/ClassLoader;)Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->DEFAULT_TLS_EXTENSION_TYPE:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    .line 150
    return-void
.end method

.method constructor <init>(Lio/grpc/okhttp/internal/Platform;Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;)V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;-><init>(Lio/grpc/okhttp/internal/Platform;)V

    .line 162
    const-string v0, "Unable to pick a TLS extension"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->tlsExtensionType:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    .line 163
    return-void
.end method

.method static synthetic access$000()Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->DEFAULT_TLS_EXTENSION_TYPE:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    return-object v0
.end method

.method static pickTlsExtensionType(Ljava/lang/ClassLoader;)Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;
    .locals 1

    .prologue
    .line 243
    const-string v0, "GmsCore_OpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;->ALPN_AND_NPN:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    .line 265
    :goto_0
    return-object v0

    .line 250
    :cond_0
    :try_start_0
    const-string v0, "android.net.Network"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 251
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;->ALPN_AND_NPN:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 258
    :try_start_1
    const-string v0, "android.app.ActivityOptions"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 259
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;->NPN:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 265
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 185
    if-eqz p2, :cond_0

    .line 186
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_USE_SESSION_TICKETS:Lio/grpc/okhttp/internal/OptionalMethod;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_HOSTNAME:Lio/grpc/okhttp/internal/OptionalMethod;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {v0, p1, v1}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Lio/grpc/okhttp/internal/Platform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v4

    .line 191
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->tlsExtensionType:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    sget-object v2, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;->ALPN_AND_NPN:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    if-ne v1, v2, :cond_1

    .line 192
    sget-object v1, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_ALPN_PROTOCOLS:Lio/grpc/okhttp/internal/OptionalMethod;

    invoke-virtual {v1, p1, v0}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->tlsExtensionType:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    if-eqz v1, :cond_2

    .line 196
    sget-object v1, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_NPN_PROTOCOLS:Lio/grpc/okhttp/internal/OptionalMethod;

    invoke-virtual {v1, p1, v0}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void

    .line 198
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "We can not do TLS handshake on this Android version, please install the Google Play Services Dynamic Security Provider to use TLS"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->tlsExtensionType:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    sget-object v1, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;->ALPN_AND_NPN:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    if-ne v0, v1, :cond_0

    .line 207
    :try_start_0
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->GET_ALPN_SELECTED_PROTOCOL:Lio/grpc/okhttp/internal/OptionalMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 208
    invoke-virtual {v0, p1, v1}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 209
    if-eqz v0, :cond_0

    .line 210
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lio/grpc/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 230
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 218
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->tlsExtensionType:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    if-eqz v0, :cond_1

    .line 220
    :try_start_1
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->GET_NPN_SELECTED_PROTOCOL:Lio/grpc/okhttp/internal/OptionalMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 221
    invoke-virtual {v0, p1, v1}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 222
    if-eqz v0, :cond_1

    .line 223
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lio/grpc/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 225
    :catch_1
    move-exception v0

    .line 230
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public negotiate(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/Protocol;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    .line 171
    if-nez v0, :cond_0

    .line 172
    invoke-super {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->negotiate(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    return-object v0
.end method
