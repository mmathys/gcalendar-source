.class final enum Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;
.super Ljava/lang/Enum;
.source "OkHttpProtocolNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TlsExtensionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

.field public static final enum ALPN_AND_NPN:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

.field public static final enum NPN:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    new-instance v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    const-string v1, "ALPN_AND_NPN"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;->ALPN_AND_NPN:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    .line 155
    new-instance v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    const-string v1, "NPN"

    invoke-direct {v0, v1, v3}, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;->NPN:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    sget-object v1, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;->ALPN_AND_NPN:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;->NPN:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    aput-object v1, v0, v3

    sput-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;->$VALUES:[Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;->$VALUES:[Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    invoke-virtual {v0}, [Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    return-object v0
.end method
