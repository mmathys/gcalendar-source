.class public final enum Lio/grpc/okhttp/internal/framed/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/grpc/okhttp/internal/framed/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum COMPRESSION_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum CONNECT_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum ENHANCE_YOUR_CALM:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum FLOW_CONTROL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum FRAME_TOO_LARGE:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum HTTP_1_1_REQUIRED:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum INADEQUATE_SECURITY:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum INVALID_CREDENTIALS:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum INVALID_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum REFUSED_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum STREAM_ALREADY_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum STREAM_IN_USE:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field public static final enum UNSUPPORTED_VERSION:Lio/grpc/okhttp/internal/framed/ErrorCode;


# instance fields
.field public final httpCode:I

.field public final spdyGoAwayCode:I

.field public final spdyRstCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v2, 0x0

    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 25
    new-instance v0, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "NO_ERROR"

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 27
    new-instance v5, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v6, "PROTOCOL_ERROR"

    move v8, v7

    move v9, v7

    move v10, v7

    invoke-direct/range {v5 .. v10}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 30
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "INVALID_STREAM"

    move v10, v14

    move v11, v7

    move v12, v14

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 33
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "UNSUPPORTED_VERSION"

    const/4 v12, 0x4

    move v10, v15

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->UNSUPPORTED_VERSION:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 36
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "STREAM_IN_USE"

    const/4 v10, 0x4

    const/16 v12, 0x8

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_IN_USE:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 39
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "STREAM_ALREADY_CLOSED"

    const/4 v10, 0x5

    const/16 v12, 0x9

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_ALREADY_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 41
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "INTERNAL_ERROR"

    const/4 v10, 0x6

    const/4 v12, 0x6

    move v11, v14

    move v13, v14

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 43
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "FLOW_CONTROL_ERROR"

    const/4 v10, 0x7

    const/4 v12, 0x7

    move v11, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 45
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "STREAM_CLOSED"

    const/16 v10, 0x8

    const/4 v11, 0x5

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 47
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "FRAME_TOO_LARGE"

    const/16 v10, 0x9

    const/4 v11, 0x6

    const/16 v12, 0xb

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->FRAME_TOO_LARGE:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 49
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "REFUSED_STREAM"

    const/16 v10, 0xa

    const/4 v11, 0x7

    move v12, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 51
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "CANCEL"

    const/16 v10, 0xb

    const/16 v11, 0x8

    const/4 v12, 0x5

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 53
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "COMPRESSION_ERROR"

    const/16 v10, 0xc

    const/16 v11, 0x9

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->COMPRESSION_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 55
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "CONNECT_ERROR"

    const/16 v10, 0xd

    const/16 v11, 0xa

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->CONNECT_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 57
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "ENHANCE_YOUR_CALM"

    const/16 v10, 0xe

    const/16 v11, 0xb

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 59
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "INADEQUATE_SECURITY"

    const/16 v10, 0xf

    const/16 v11, 0xc

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->INADEQUATE_SECURITY:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 61
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "HTTP_1_1_REQUIRED"

    const/16 v10, 0x10

    const/16 v11, 0xd

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->HTTP_1_1_REQUIRED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 63
    new-instance v8, Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v9, "INVALID_CREDENTIALS"

    const/16 v10, 0x11

    const/16 v12, 0xa

    move v11, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->INVALID_CREDENTIALS:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 23
    const/16 v0, 0x12

    new-array v0, v0, [Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v1, v0, v14

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->UNSUPPORTED_VERSION:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_IN_USE:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_ALREADY_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->FRAME_TOO_LARGE:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->COMPRESSION_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->CONNECT_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->INADEQUATE_SECURITY:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->HTTP_1_1_REQUIRED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->INVALID_CREDENTIALS:Lio/grpc/okhttp/internal/framed/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->$VALUES:[Lio/grpc/okhttp/internal/framed/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    .line 71
    iput p4, p0, Lio/grpc/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    .line 72
    iput p5, p0, Lio/grpc/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    .line 73
    return-void
.end method

.method public static fromHttp2(I)Lio/grpc/okhttp/internal/framed/ErrorCode;
    .locals 5

    .prologue
    .line 83
    invoke-static {}, Lio/grpc/okhttp/internal/framed/ErrorCode;->values()[Lio/grpc/okhttp/internal/framed/ErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 84
    iget v4, v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    if-ne v4, p0, :cond_0

    .line 86
    :goto_1
    return-object v0

    .line 83
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static values()[Lio/grpc/okhttp/internal/framed/ErrorCode;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->$VALUES:[Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0}, [Lio/grpc/okhttp/internal/framed/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/okhttp/internal/framed/ErrorCode;

    return-object v0
.end method
