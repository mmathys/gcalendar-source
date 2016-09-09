.class Lio/grpc/Status$StatusCodeMarshaller;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Lio/grpc/Metadata$AsciiMarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusCodeMarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/Metadata$AsciiMarshaller",
        "<",
        "Lio/grpc/Status;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Status$1;)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Lio/grpc/Status$StatusCodeMarshaller;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAsciiString(Ljava/lang/String;)Lio/grpc/Status;
    .locals 1

    .prologue
    .line 582
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/grpc/Status;->fromCodeValue(I)Lio/grpc/Status;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseAsciiString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Lio/grpc/Status$StatusCodeMarshaller;->parseAsciiString(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiString(Lio/grpc/Status;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v0

    # invokes: Lio/grpc/Status$Code;->valueAscii()Ljava/lang/String;
    invoke-static {v0}, Lio/grpc/Status$Code;->access$200(Lio/grpc/Status$Code;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toAsciiString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    check-cast p1, Lio/grpc/Status;

    invoke-virtual {p0, p1}, Lio/grpc/Status$StatusCodeMarshaller;->toAsciiString(Lio/grpc/Status;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
