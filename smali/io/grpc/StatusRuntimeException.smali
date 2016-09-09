.class public Lio/grpc/StatusRuntimeException;
.super Ljava/lang/RuntimeException;
.source "StatusRuntimeException.java"


# static fields
.field private static final serialVersionUID:J = 0x1b131cbf794914f0L


# instance fields
.field private final status:Lio/grpc/Status;

.field private final trailers:Lio/grpc/Metadata;


# direct methods
.method public constructor <init>(Lio/grpc/Status;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/StatusRuntimeException;-><init>(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {p1}, Lio/grpc/Status;->formatThrowableMessage(Lio/grpc/Status;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/Status;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    iput-object p1, p0, Lio/grpc/StatusRuntimeException;->status:Lio/grpc/Status;

    .line 58
    iput-object p2, p0, Lio/grpc/StatusRuntimeException;->trailers:Lio/grpc/Metadata;

    .line 59
    return-void
.end method


# virtual methods
.method public final getStatus()Lio/grpc/Status;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/grpc/StatusRuntimeException;->status:Lio/grpc/Status;

    return-object v0
.end method

.method public final getTrailers()Lio/grpc/Metadata;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lio/grpc/StatusRuntimeException;->trailers:Lio/grpc/Metadata;

    return-object v0
.end method
