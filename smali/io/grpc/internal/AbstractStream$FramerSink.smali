.class Lio/grpc/internal/AbstractStream$FramerSink;
.super Ljava/lang/Object;
.source "AbstractStream.java"

# interfaces
.implements Lio/grpc/internal/MessageFramer$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AbstractStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FramerSink"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/AbstractStream;


# direct methods
.method constructor <init>(Lio/grpc/internal/AbstractStream;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lio/grpc/internal/AbstractStream$FramerSink;->this$0:Lio/grpc/internal/AbstractStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliverFrame(Lio/grpc/internal/WritableBuffer;ZZ)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$FramerSink;->this$0:Lio/grpc/internal/AbstractStream;

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/internal/AbstractStream;->internalSendFrame(Lio/grpc/internal/WritableBuffer;ZZ)V

    .line 107
    return-void
.end method
