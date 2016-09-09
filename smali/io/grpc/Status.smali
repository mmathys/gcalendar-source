.class public final Lio/grpc/Status;
.super Ljava/lang/Object;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Status$StatusCodeMarshaller;,
        Lio/grpc/Status$Code;
    }
.end annotation


# static fields
.field public static final ABORTED:Lio/grpc/Status;

.field public static final ALREADY_EXISTS:Lio/grpc/Status;

.field public static final CANCELLED:Lio/grpc/Status;

.field public static final CODE_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key",
            "<",
            "Lio/grpc/Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_LOSS:Lio/grpc/Status;

.field public static final DEADLINE_EXCEEDED:Lio/grpc/Status;

.field public static final FAILED_PRECONDITION:Lio/grpc/Status;

.field public static final INTERNAL:Lio/grpc/Status;

.field public static final INVALID_ARGUMENT:Lio/grpc/Status;

.field public static final MESSAGE_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOT_FOUND:Lio/grpc/Status;

.field public static final OK:Lio/grpc/Status;

.field public static final OUT_OF_RANGE:Lio/grpc/Status;

.field public static final PERMISSION_DENIED:Lio/grpc/Status;

.field public static final RESOURCE_EXHAUSTED:Lio/grpc/Status;

.field private static final STATUS_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/grpc/Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATUS_MESSAGE_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$AsciiMarshaller",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNAUTHENTICATED:Lio/grpc/Status;

.field public static final UNAVAILABLE:Lio/grpc/Status;

.field public static final UNIMPLEMENTED:Lio/grpc/Status;

.field public static final UNKNOWN:Lio/grpc/Status;


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final code:Lio/grpc/Status$Code;

.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 242
    invoke-static {}, Lio/grpc/Status;->buildStatusList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->STATUS_LIST:Ljava/util/List;

    .line 259
    sget-object v0, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->OK:Lio/grpc/Status;

    .line 261
    sget-object v0, Lio/grpc/Status$Code;->CANCELLED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 263
    sget-object v0, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    .line 265
    sget-object v0, Lio/grpc/Status$Code;->INVALID_ARGUMENT:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->INVALID_ARGUMENT:Lio/grpc/Status;

    .line 267
    sget-object v0, Lio/grpc/Status$Code;->DEADLINE_EXCEEDED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->DEADLINE_EXCEEDED:Lio/grpc/Status;

    .line 269
    sget-object v0, Lio/grpc/Status$Code;->NOT_FOUND:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->NOT_FOUND:Lio/grpc/Status;

    .line 271
    sget-object v0, Lio/grpc/Status$Code;->ALREADY_EXISTS:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->ALREADY_EXISTS:Lio/grpc/Status;

    .line 276
    sget-object v0, Lio/grpc/Status$Code;->PERMISSION_DENIED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->PERMISSION_DENIED:Lio/grpc/Status;

    .line 278
    sget-object v0, Lio/grpc/Status$Code;->UNAUTHENTICATED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    .line 283
    sget-object v0, Lio/grpc/Status$Code;->RESOURCE_EXHAUSTED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    .line 288
    sget-object v0, Lio/grpc/Status$Code;->FAILED_PRECONDITION:Lio/grpc/Status$Code;

    .line 289
    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->FAILED_PRECONDITION:Lio/grpc/Status;

    .line 294
    sget-object v0, Lio/grpc/Status$Code;->ABORTED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->ABORTED:Lio/grpc/Status;

    .line 296
    sget-object v0, Lio/grpc/Status$Code;->OUT_OF_RANGE:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->OUT_OF_RANGE:Lio/grpc/Status;

    .line 298
    sget-object v0, Lio/grpc/Status$Code;->UNIMPLEMENTED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->UNIMPLEMENTED:Lio/grpc/Status;

    .line 300
    sget-object v0, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 302
    sget-object v0, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 304
    sget-object v0, Lio/grpc/Status$Code;->DATA_LOSS:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->DATA_LOSS:Lio/grpc/Status;

    .line 328
    const-string v0, "grpc-status"

    new-instance v1, Lio/grpc/Status$StatusCodeMarshaller;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/grpc/Status$StatusCodeMarshaller;-><init>(Lio/grpc/Status$1;)V

    .line 329
    invoke-static {v0, v1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->CODE_KEY:Lio/grpc/Metadata$Key;

    .line 353
    new-instance v0, Lio/grpc/Status$1;

    invoke-direct {v0}, Lio/grpc/Status$1;-><init>()V

    sput-object v0, Lio/grpc/Status;->STATUS_MESSAGE_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 398
    const-string v0, "grpc-message"

    sget-object v1, Lio/grpc/Status;->STATUS_MESSAGE_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 399
    invoke-static {v0, v1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->MESSAGE_KEY:Lio/grpc/Metadata$Key;

    .line 398
    return-void
.end method

.method private constructor <init>(Lio/grpc/Status$Code;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-direct {p0, p1, v0, v0}, Lio/grpc/Status;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    return-void
.end method

.method private constructor <init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Status$Code;

    iput-object v0, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    .line 459
    iput-object p2, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    .line 460
    iput-object p3, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    .line 461
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lio/grpc/Status;->STATUS_LIST:Ljava/util/List;

    return-object v0
.end method

.method private static buildStatusList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/grpc/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 246
    invoke-static {}, Lio/grpc/Status$Code;->values()[Lio/grpc/Status$Code;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 247
    invoke-virtual {v5}, Lio/grpc/Status$Code;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v6, Lio/grpc/Status;

    invoke-direct {v6, v5}, Lio/grpc/Status;-><init>(Lio/grpc/Status$Code;)V

    invoke-virtual {v2, v0, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Status;

    .line 248
    if-eqz v0, :cond_0

    .line 249
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 250
    invoke-virtual {v0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status$Code;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lio/grpc/Status$Code;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Code value duplication between "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " & "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 253
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static formatThrowableMessage(Lio/grpc/Status;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 442
    iget-object v0, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromCodeValue(I)Lio/grpc/Status;
    .locals 3

    .prologue
    .line 310
    if-ltz p0, :cond_0

    sget-object v0, Lio/grpc/Status;->STATUS_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p0, v0, :cond_1

    .line 311
    :cond_0
    sget-object v0, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lio/grpc/Status;->STATUS_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Status;

    goto :goto_0
.end method

.method public static fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;
    .locals 2

    .prologue
    .line 409
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 410
    :goto_0
    if-eqz v0, :cond_2

    .line 411
    instance-of v1, v0, Lio/grpc/StatusException;

    if-eqz v1, :cond_0

    .line 412
    check-cast v0, Lio/grpc/StatusException;

    invoke-virtual {v0}, Lio/grpc/StatusException;->getStatus()Lio/grpc/Status;

    move-result-object v0

    .line 419
    :goto_1
    return-object v0

    .line 413
    :cond_0
    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-eqz v1, :cond_1

    .line 414
    check-cast v0, Lio/grpc/StatusRuntimeException;

    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object v0

    goto :goto_1

    .line 416
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_2
    sget-object v0, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    invoke-virtual {v0, p0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public asException()Lio/grpc/StatusException;
    .locals 1

    .prologue
    .line 553
    new-instance v0, Lio/grpc/StatusException;

    invoke-direct {v0, p0}, Lio/grpc/StatusException;-><init>(Lio/grpc/Status;)V

    return-object v0
.end method

.method public asRuntimeException()Lio/grpc/StatusRuntimeException;
    .locals 1

    .prologue
    .line 536
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p0}, Lio/grpc/StatusRuntimeException;-><init>(Lio/grpc/Status;)V

    return-object v0
.end method

.method public asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;
    .locals 1

    .prologue
    .line 545
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p0, p1}, Lio/grpc/StatusRuntimeException;-><init>(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-object v0
.end method

.method public augmentDescription(Ljava/lang/String;)Lio/grpc/Status;
    .locals 6

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 496
    :goto_0
    return-object p0

    .line 493
    :cond_0
    iget-object v0, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 494
    new-instance v0, Lio/grpc/Status;

    iget-object v1, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    iget-object v2, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lio/grpc/Status;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 496
    :cond_1
    new-instance v0, Lio/grpc/Status;

    iget-object v1, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    iget-object v2, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/Status;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 593
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getCode()Lio/grpc/Status$Code;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 603
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOk()Z
    .locals 2

    .prologue
    .line 528
    sget-object v0, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    iget-object v1, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 567
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "code"

    iget-object v2, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    .line 568
    invoke-virtual {v2}, Lio/grpc/Status$Code;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    .line 569
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "cause"

    iget-object v2, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    .line 570
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    return-object v0
.end method

.method public withCause(Ljava/lang/Throwable;)Lio/grpc/Status;
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lio/grpc/Status;

    iget-object v1, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    iget-object v2, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lio/grpc/Status;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withDescription(Ljava/lang/String;)Lio/grpc/Status;
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lio/grpc/Status;

    iget-object v1, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    iget-object v2, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lio/grpc/Status;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0
.end method
