.class public final Lio/grpc/okhttp/internal/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/internal/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field private static final APPROVED_CIPHER_SUITES:[Lio/grpc/okhttp/internal/CipherSuite;

.field public static final CLEARTEXT:Lio/grpc/okhttp/internal/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Lio/grpc/okhttp/internal/ConnectionSpec;

.field public static final MODERN_TLS:Lio/grpc/okhttp/internal/ConnectionSpec;


# instance fields
.field private final cipherSuites:[Ljava/lang/String;

.field final supportsTlsExtensions:Z

.field final tls:Z

.field private final tlsVersions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 36
    const/16 v0, 0xe

    new-array v0, v0, [Lio/grpc/okhttp/internal/CipherSuite;

    sget-object v1, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v1, v0, v4

    sget-object v1, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/okhttp/internal/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v1, v0, v5

    sget-object v1, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v2, v0, v1

    sput-object v0, Lio/grpc/okhttp/internal/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lio/grpc/okhttp/internal/CipherSuite;

    .line 58
    new-instance v0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;-><init>(Z)V

    sget-object v1, Lio/grpc/okhttp/internal/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lio/grpc/okhttp/internal/CipherSuite;

    .line 59
    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites([Lio/grpc/okhttp/internal/CipherSuite;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v6, [Lio/grpc/okhttp/internal/TlsVersion;

    sget-object v2, Lio/grpc/okhttp/internal/TlsVersion;->TLS_1_2:Lio/grpc/okhttp/internal/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lio/grpc/okhttp/internal/TlsVersion;->TLS_1_1:Lio/grpc/okhttp/internal/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lio/grpc/okhttp/internal/TlsVersion;->TLS_1_0:Lio/grpc/okhttp/internal/TlsVersion;

    aput-object v2, v1, v5

    .line 60
    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions([Lio/grpc/okhttp/internal/TlsVersion;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v3}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->build()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/internal/ConnectionSpec;->MODERN_TLS:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 65
    new-instance v0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    sget-object v1, Lio/grpc/okhttp/internal/ConnectionSpec;->MODERN_TLS:Lio/grpc/okhttp/internal/ConnectionSpec;

    invoke-direct {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;-><init>(Lio/grpc/okhttp/internal/ConnectionSpec;)V

    new-array v1, v3, [Lio/grpc/okhttp/internal/TlsVersion;

    sget-object v2, Lio/grpc/okhttp/internal/TlsVersion;->TLS_1_0:Lio/grpc/okhttp/internal/TlsVersion;

    aput-object v2, v1, v4

    .line 66
    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions([Lio/grpc/okhttp/internal/TlsVersion;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v3}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->build()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/internal/ConnectionSpec;->COMPATIBLE_TLS:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 71
    new-instance v0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    invoke-direct {v0, v4}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->build()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/internal/ConnectionSpec;->CLEARTEXT:Lio/grpc/okhttp/internal/ConnectionSpec;

    return-void
.end method

.method private constructor <init>(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    # getter for: Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tls:Z
    invoke-static {p1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->access$000(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    .line 88
    # getter for: Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;
    invoke-static {p1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->access$100(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 89
    # getter for: Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;
    invoke-static {p1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->access$200(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 90
    # getter for: Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->supportsTlsExtensions:Z
    invoke-static {p1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->access$300(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions:Z

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;Lio/grpc/okhttp/internal/ConnectionSpec$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/ConnectionSpec;-><init>(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lio/grpc/okhttp/internal/ConnectionSpec;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/okhttp/internal/ConnectionSpec;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lio/grpc/okhttp/internal/ConnectionSpec;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 145
    const-class v1, Ljava/lang/String;

    iget-object v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 146
    invoke-static {v1, v2, v0}, Lio/grpc/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 149
    :cond_0
    if-eqz p2, :cond_2

    .line 154
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 156
    if-eqz v1, :cond_2

    .line 158
    if-eqz v0, :cond_1

    .line 161
    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 162
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    const-string v2, "TLS_FALLBACK_SCSV"

    aput-object v2, v1, v0

    .line 169
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 170
    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lio/grpc/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 171
    new-instance v2, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    invoke-direct {v2, p0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;-><init>(Lio/grpc/okhttp/internal/ConnectionSpec;)V

    .line 172
    invoke-virtual {v2, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->build()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    .line 171
    return-object v0

    .line 160
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public apply(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/internal/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    .line 128
    iget-object v1, v0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 130
    iget-object v0, v0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/CipherSuite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lio/grpc/okhttp/internal/CipherSuite;

    .line 106
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 107
    iget-object v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lio/grpc/okhttp/internal/CipherSuite;->forJavaName(Ljava/lang/String;)Lio/grpc/okhttp/internal/CipherSuite;

    move-result-object v2

    aput-object v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_1
    invoke-static {v1}, Lio/grpc/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 236
    instance-of v2, p1, Lio/grpc/okhttp/internal/ConnectionSpec;

    if-nez v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    .line 239
    :cond_2
    check-cast p1, Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 240
    iget-boolean v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    iget-boolean v3, p1, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    if-ne v2, v3, :cond_0

    .line 242
    iget-boolean v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    if-eqz v2, :cond_3

    .line 243
    iget-object v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v3, p1, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v3, p1, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    iget-boolean v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean v3, p1, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions:Z

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 248
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 252
    const/16 v0, 0x11

    .line 253
    iget-boolean v1, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    if-eqz v1, :cond_0

    .line 254
    iget-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 255
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 258
    :cond_0
    return v0

    .line 256
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public supportsTlsExtensions()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/TlsVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lio/grpc/okhttp/internal/TlsVersion;

    .line 114
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 115
    iget-object v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lio/grpc/okhttp/internal/TlsVersion;->forJavaName(Ljava/lang/String;)Lio/grpc/okhttp/internal/TlsVersion;

    move-result-object v2

    aput-object v2, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {v1}, Lio/grpc/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 262
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v0

    .line 264
    if-nez v0, :cond_0

    const-string v0, "[use default]"

    .line 266
    :goto_0
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x48

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ConnectionSpec(cipherSuites="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", tlsVersions="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_1
    return-object v0

    .line 264
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_1
    const-string v0, "ConnectionSpec()"

    goto :goto_1
.end method
