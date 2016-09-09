.class Lio/grpc/internal/MessageFramer$OutputStreamAdapter;
.super Ljava/io/OutputStream;
.source "MessageFramer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/MessageFramer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputStreamAdapter"
.end annotation


# instance fields
.field private final singleByte:[B

.field final synthetic this$0:Lio/grpc/internal/MessageFramer;


# direct methods
.method private constructor <init>(Lio/grpc/internal/MessageFramer;)V
    .locals 1

    .prologue
    .line 316
    iput-object p1, p0, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;->this$0:Lio/grpc/internal/MessageFramer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 317
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;->singleByte:[B

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;-><init>(Lio/grpc/internal/MessageFramer;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-object v0, p0, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 322
    iget-object v0, p0, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;->write([BII)V

    .line 323
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;->this$0:Lio/grpc/internal/MessageFramer;

    # invokes: Lio/grpc/internal/MessageFramer;->writeRaw([BII)V
    invoke-static {v0, p1, p2, p3}, Lio/grpc/internal/MessageFramer;->access$400(Lio/grpc/internal/MessageFramer;[BII)V

    .line 328
    return-void
.end method
