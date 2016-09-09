.class final Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
.super Ljava/lang/Object;
.source "OutboundFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OutboundFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteStatus"
.end annotation


# instance fields
.field numWrites:I

.field final synthetic this$0:Lio/grpc/okhttp/OutboundFlowController;


# direct methods
.method private constructor <init>(Lio/grpc/okhttp/OutboundFlowController;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OutboundFlowController$1;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;-><init>(Lio/grpc/okhttp/OutboundFlowController;)V

    return-void
.end method


# virtual methods
.method hasWritten()Z
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->numWrites:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method incrementNumWrites()V
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->numWrites:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->numWrites:I

    .line 229
    return-void
.end method
