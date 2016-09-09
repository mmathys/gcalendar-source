.class public final enum Lio/grpc/internal/GrpcUtil$Http2Error;
.super Ljava/lang/Enum;
.source "GrpcUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/GrpcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Http2Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/grpc/internal/GrpcUtil$Http2Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum CANCEL:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum COMPRESSION_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum CONNECT_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum ENHANCE_YOUR_CALM:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum FLOW_CONTROL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum FRAME_SIZE_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum HTTP_1_1_REQUIRED:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum INADEQUATE_SECURITY:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum INTERNAL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum NO_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum PROTOCOL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum REFUSED_STREAM:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum SETTINGS_TIMEOUT:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum STREAM_CLOSED:Lio/grpc/internal/GrpcUtil$Http2Error;

.field private static final codeMap:[Lio/grpc/internal/GrpcUtil$Http2Error;


# instance fields
.field private final code:I

.field private final status:Lio/grpc/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 204
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "NO_ERROR"

    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    invoke-direct {v0, v1, v6, v6, v2}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->NO_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 205
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "PROTOCOL_ERROR"

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-direct {v0, v1, v7, v7, v2}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->PROTOCOL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 206
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "INTERNAL_ERROR"

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-direct {v0, v1, v8, v8, v2}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->INTERNAL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 207
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "FLOW_CONTROL_ERROR"

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-direct {v0, v1, v9, v9, v2}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->FLOW_CONTROL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 208
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "SETTINGS_TIMEOUT"

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-direct {v0, v1, v10, v10, v2}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->SETTINGS_TIMEOUT:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 209
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "STREAM_CLOSED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    sget-object v4, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->STREAM_CLOSED:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 210
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "FRAME_SIZE_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    sget-object v4, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 211
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "REFUSED_STREAM"

    const/4 v2, 0x7

    const/4 v3, 0x7

    sget-object v4, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->REFUSED_STREAM:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 212
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "CANCEL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    sget-object v4, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->CANCEL:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 213
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "COMPRESSION_ERROR"

    const/16 v2, 0x9

    const/16 v3, 0x9

    sget-object v4, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->COMPRESSION_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 214
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "CONNECT_ERROR"

    const/16 v2, 0xa

    const/16 v3, 0xa

    sget-object v4, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->CONNECT_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 215
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "ENHANCE_YOUR_CALM"

    const/16 v2, 0xb

    const/16 v3, 0xb

    sget-object v4, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    const-string v5, "Bandwidth exhausted"

    invoke-virtual {v4, v5}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->ENHANCE_YOUR_CALM:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 216
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "INADEQUATE_SECURITY"

    const/16 v2, 0xc

    const/16 v3, 0xc

    sget-object v4, Lio/grpc/Status;->PERMISSION_DENIED:Lio/grpc/Status;

    const-string v5, "Permission denied as protocol is not secure enough to call"

    invoke-virtual {v4, v5}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->INADEQUATE_SECURITY:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 218
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const-string v1, "HTTP_1_1_REQUIRED"

    const/16 v2, 0xd

    const/16 v3, 0xd

    sget-object v4, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->HTTP_1_1_REQUIRED:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 198
    const/16 v0, 0xe

    new-array v0, v0, [Lio/grpc/internal/GrpcUtil$Http2Error;

    sget-object v1, Lio/grpc/internal/GrpcUtil$Http2Error;->NO_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v1, v0, v6

    sget-object v1, Lio/grpc/internal/GrpcUtil$Http2Error;->PROTOCOL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v1, v0, v7

    sget-object v1, Lio/grpc/internal/GrpcUtil$Http2Error;->INTERNAL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v1, v0, v8

    sget-object v1, Lio/grpc/internal/GrpcUtil$Http2Error;->FLOW_CONTROL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v1, v0, v9

    sget-object v1, Lio/grpc/internal/GrpcUtil$Http2Error;->SETTINGS_TIMEOUT:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lio/grpc/internal/GrpcUtil$Http2Error;->STREAM_CLOSED:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/grpc/internal/GrpcUtil$Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/grpc/internal/GrpcUtil$Http2Error;->REFUSED_STREAM:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/grpc/internal/GrpcUtil$Http2Error;->CANCEL:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/grpc/internal/GrpcUtil$Http2Error;->COMPRESSION_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/grpc/internal/GrpcUtil$Http2Error;->CONNECT_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lio/grpc/internal/GrpcUtil$Http2Error;->ENHANCE_YOUR_CALM:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lio/grpc/internal/GrpcUtil$Http2Error;->INADEQUATE_SECURITY:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lio/grpc/internal/GrpcUtil$Http2Error;->HTTP_1_1_REQUIRED:Lio/grpc/internal/GrpcUtil$Http2Error;

    aput-object v2, v0, v1

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->$VALUES:[Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 221
    invoke-static {}, Lio/grpc/internal/GrpcUtil$Http2Error;->buildHttp2CodeMap()[Lio/grpc/internal/GrpcUtil$Http2Error;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->codeMap:[Lio/grpc/internal/GrpcUtil$Http2Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILio/grpc/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/grpc/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 238
    iput p3, p0, Lio/grpc/internal/GrpcUtil$Http2Error;->code:I

    .line 239
    const-string v1, "HTTP/2 error code: "

    invoke-virtual {p0}, Lio/grpc/internal/GrpcUtil$Http2Error;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p4, v0}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/GrpcUtil$Http2Error;->status:Lio/grpc/Status;

    .line 240
    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static buildHttp2CodeMap()[Lio/grpc/internal/GrpcUtil$Http2Error;
    .locals 8

    .prologue
    .line 224
    invoke-static {}, Lio/grpc/internal/GrpcUtil$Http2Error;->values()[Lio/grpc/internal/GrpcUtil$Http2Error;

    move-result-object v1

    .line 225
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lio/grpc/internal/GrpcUtil$Http2Error;->code()J

    move-result-wide v2

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 226
    new-array v2, v0, [Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 227
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 228
    invoke-virtual {v4}, Lio/grpc/internal/GrpcUtil$Http2Error;->code()J

    move-result-wide v6

    long-to-int v5, v6

    .line 229
    aput-object v4, v2, v5

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-object v2
.end method

.method public static forCode(J)Lio/grpc/internal/GrpcUtil$Http2Error;
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->codeMap:[Lio/grpc/internal/GrpcUtil$Http2Error;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 264
    :cond_0
    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->codeMap:[Lio/grpc/internal/GrpcUtil$Http2Error;

    long-to-int v1, p0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static statusForCode(J)Lio/grpc/Status;
    .locals 4

    .prologue
    .line 280
    invoke-static {p0, p1}, Lio/grpc/internal/GrpcUtil$Http2Error;->forCode(J)Lio/grpc/internal/GrpcUtil$Http2Error;

    move-result-object v0

    .line 281
    if-nez v0, :cond_0

    .line 283
    sget-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->INTERNAL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    invoke-virtual {v0}, Lio/grpc/internal/GrpcUtil$Http2Error;->status()Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lio/grpc/Status$Code;->value()I

    move-result v0

    invoke-static {v0}, Lio/grpc/Status;->fromCodeValue(I)Lio/grpc/Status;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x34

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unrecognized HTTP/2 error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lio/grpc/internal/GrpcUtil$Http2Error;->status()Lio/grpc/Status;

    move-result-object v0

    goto :goto_0
.end method

.method public static values()[Lio/grpc/internal/GrpcUtil$Http2Error;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->$VALUES:[Lio/grpc/internal/GrpcUtil$Http2Error;

    invoke-virtual {v0}, [Lio/grpc/internal/GrpcUtil$Http2Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/internal/GrpcUtil$Http2Error;

    return-object v0
.end method


# virtual methods
.method public code()J
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lio/grpc/internal/GrpcUtil$Http2Error;->code:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public status()Lio/grpc/Status;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lio/grpc/internal/GrpcUtil$Http2Error;->status:Lio/grpc/Status;

    return-object v0
.end method
