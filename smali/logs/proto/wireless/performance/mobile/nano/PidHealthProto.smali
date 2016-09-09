.class public final Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "PidHealthProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;->cachedSize:I

    .line 27
    return-void
.end method

.method public static emptyArray()[Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;

    sput-object v0, Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/PidHealthProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 35
    packed-switch v0, :pswitch_data_0

    .line 39
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    :pswitch_0
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
