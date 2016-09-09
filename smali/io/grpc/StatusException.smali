.class public Lio/grpc/StatusException;
.super Ljava/lang/Exception;
.source "StatusException.java"


# static fields
.field private static final serialVersionUID:J = -0x92c2efbb80cef00L


# instance fields
.field private final status:Lio/grpc/Status;

.field private final trailers:Lio/grpc/Metadata;


# direct methods
.method public constructor <init>(Lio/grpc/Status;)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/StatusException;-><init>(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 2

    .prologue
    .line 55
    invoke-static {p1}, Lio/grpc/Status;->formatThrowableMessage(Lio/grpc/Status;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/Status;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    iput-object p1, p0, Lio/grpc/StatusException;->status:Lio/grpc/Status;

    .line 57
    iput-object p2, p0, Lio/grpc/StatusException;->trailers:Lio/grpc/Metadata;

    .line 58
    return-void
.end method


# virtual methods
.method public final getStatus()Lio/grpc/Status;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lio/grpc/StatusException;->status:Lio/grpc/Status;

    return-object v0
.end method

.method public final getTrailers()Lio/grpc/Metadata;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lio/grpc/StatusException;->trailers:Lio/grpc/Metadata;

    return-object v0
.end method
