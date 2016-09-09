.class public final enum Lio/grpc/okhttp/internal/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/grpc/okhttp/internal/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/okhttp/internal/Protocol;

.field public static final enum HTTP_1_0:Lio/grpc/okhttp/internal/Protocol;

.field public static final enum HTTP_1_1:Lio/grpc/okhttp/internal/Protocol;

.field public static final enum HTTP_2:Lio/grpc/okhttp/internal/Protocol;

.field public static final enum SPDY_3:Lio/grpc/okhttp/internal/Protocol;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lio/grpc/okhttp/internal/Protocol;

    const-string v1, "HTTP_1_0"

    const-string v2, "http/1.0"

    invoke-direct {v0, v1, v3, v2}, Lio/grpc/okhttp/internal/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/internal/Protocol;->HTTP_1_0:Lio/grpc/okhttp/internal/Protocol;

    .line 49
    new-instance v0, Lio/grpc/okhttp/internal/Protocol;

    const-string v1, "HTTP_1_1"

    const-string v2, "http/1.1"

    invoke-direct {v0, v1, v4, v2}, Lio/grpc/okhttp/internal/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/internal/Protocol;->HTTP_1_1:Lio/grpc/okhttp/internal/Protocol;

    .line 61
    new-instance v0, Lio/grpc/okhttp/internal/Protocol;

    const-string v1, "SPDY_3"

    const-string v2, "spdy/3.1"

    invoke-direct {v0, v1, v5, v2}, Lio/grpc/okhttp/internal/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/internal/Protocol;->SPDY_3:Lio/grpc/okhttp/internal/Protocol;

    .line 73
    new-instance v0, Lio/grpc/okhttp/internal/Protocol;

    const-string v1, "HTTP_2"

    const-string v2, "h2"

    invoke-direct {v0, v1, v6, v2}, Lio/grpc/okhttp/internal/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/internal/Protocol;->HTTP_2:Lio/grpc/okhttp/internal/Protocol;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lio/grpc/okhttp/internal/Protocol;

    sget-object v1, Lio/grpc/okhttp/internal/Protocol;->HTTP_1_0:Lio/grpc/okhttp/internal/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/okhttp/internal/Protocol;->HTTP_1_1:Lio/grpc/okhttp/internal/Protocol;

    aput-object v1, v0, v4

    sget-object v1, Lio/grpc/okhttp/internal/Protocol;->SPDY_3:Lio/grpc/okhttp/internal/Protocol;

    aput-object v1, v0, v5

    sget-object v1, Lio/grpc/okhttp/internal/Protocol;->HTTP_2:Lio/grpc/okhttp/internal/Protocol;

    aput-object v1, v0, v6

    sput-object v0, Lio/grpc/okhttp/internal/Protocol;->$VALUES:[Lio/grpc/okhttp/internal/Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lio/grpc/okhttp/internal/Protocol;->protocol:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static values()[Lio/grpc/okhttp/internal/Protocol;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lio/grpc/okhttp/internal/Protocol;->$VALUES:[Lio/grpc/okhttp/internal/Protocol;

    invoke-virtual {v0}, [Lio/grpc/okhttp/internal/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/okhttp/internal/Protocol;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lio/grpc/okhttp/internal/Protocol;->protocol:Ljava/lang/String;

    return-object v0
.end method
