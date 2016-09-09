.class Lio/grpc/internal/AbstractStream$DeframerListener;
.super Ljava/lang/Object;
.source "AbstractStream.java"

# interfaces
.implements Lio/grpc/internal/MessageDeframer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AbstractStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeframerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/AbstractStream;


# direct methods
.method constructor <init>(Lio/grpc/internal/AbstractStream;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lio/grpc/internal/AbstractStream$DeframerListener;->this$0:Lio/grpc/internal/AbstractStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bytesRead(I)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$DeframerListener;->this$0:Lio/grpc/internal/AbstractStream;

    invoke-virtual {v0, p1}, Lio/grpc/internal/AbstractStream;->returnProcessedBytes(I)V

    .line 115
    return-void
.end method

.method public deliveryStalled()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$DeframerListener;->this$0:Lio/grpc/internal/AbstractStream;

    invoke-virtual {v0}, Lio/grpc/internal/AbstractStream;->inboundDeliveryPaused()V

    .line 125
    return-void
.end method

.method public endOfStream()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$DeframerListener;->this$0:Lio/grpc/internal/AbstractStream;

    invoke-virtual {v0}, Lio/grpc/internal/AbstractStream;->remoteEndClosed()V

    .line 130
    return-void
.end method

.method public messageRead(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lio/grpc/internal/AbstractStream$DeframerListener;->this$0:Lio/grpc/internal/AbstractStream;

    invoke-virtual {v0, p1}, Lio/grpc/internal/AbstractStream;->receiveMessage(Ljava/io/InputStream;)V

    .line 120
    return-void
.end method
