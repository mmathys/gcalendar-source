.class final Lio/grpc/internal/Http2ClientStream$1;
.super Ljava/lang/Object;
.source "Http2ClientStream.java"

# interfaces
.implements Lio/grpc/Metadata$AsciiMarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/Http2ClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/Metadata$AsciiMarshaller",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAsciiString(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 61
    const-string v0, " "

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseAsciiString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lio/grpc/internal/Http2ClientStream$1;->parseAsciiString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toAsciiString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lio/grpc/internal/Http2ClientStream$1;->toAsciiString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
