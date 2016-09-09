.class public final enum Lio/grpc/okhttp/internal/framed/HeadersMode;
.super Ljava/lang/Enum;
.source "HeadersMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/grpc/okhttp/internal/framed/HeadersMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/okhttp/internal/framed/HeadersMode;

.field public static final enum HTTP_20_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

.field public static final enum SPDY_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

.field public static final enum SPDY_REPLY:Lio/grpc/okhttp/internal/framed/HeadersMode;

.field public static final enum SPDY_SYN_STREAM:Lio/grpc/okhttp/internal/framed/HeadersMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lio/grpc/okhttp/internal/framed/HeadersMode;

    const-string v1, "SPDY_SYN_STREAM"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lio/grpc/okhttp/internal/framed/HeadersMode;

    .line 24
    new-instance v0, Lio/grpc/okhttp/internal/framed/HeadersMode;

    const-string v1, "SPDY_REPLY"

    invoke-direct {v0, v1, v3}, Lio/grpc/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lio/grpc/okhttp/internal/framed/HeadersMode;

    .line 25
    new-instance v0, Lio/grpc/okhttp/internal/framed/HeadersMode;

    const-string v1, "SPDY_HEADERS"

    invoke-direct {v0, v1, v4}, Lio/grpc/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

    .line 26
    new-instance v0, Lio/grpc/okhttp/internal/framed/HeadersMode;

    const-string v1, "HTTP_20_HEADERS"

    invoke-direct {v0, v1, v5}, Lio/grpc/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lio/grpc/okhttp/internal/framed/HeadersMode;

    sget-object v1, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lio/grpc/okhttp/internal/framed/HeadersMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lio/grpc/okhttp/internal/framed/HeadersMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

    aput-object v1, v0, v4

    sget-object v1, Lio/grpc/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

    aput-object v1, v0, v5

    sput-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->$VALUES:[Lio/grpc/okhttp/internal/framed/HeadersMode;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lio/grpc/okhttp/internal/framed/HeadersMode;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->$VALUES:[Lio/grpc/okhttp/internal/framed/HeadersMode;

    invoke-virtual {v0}, [Lio/grpc/okhttp/internal/framed/HeadersMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/okhttp/internal/framed/HeadersMode;

    return-object v0
.end method
