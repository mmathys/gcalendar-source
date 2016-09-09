.class public final Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DistributionInvariants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;",
        ">;"
    }
.end annotation


# instance fields
.field public distributionType:I

.field public rlzBrandCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->clear()Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;

    .line 38
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;
    .locals 1

    .prologue
    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->rlzBrandCode:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->distributionType:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->cachedSize:I

    .line 45
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->rlzBrandCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->rlzBrandCode:Ljava/lang/String;

    .line 65
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_0
    iget v1, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->distributionType:I

    if-eqz v1, :cond_1

    .line 68
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->distributionType:I

    .line 69
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 80
    sparse-switch v0, :sswitch_data_0

    .line 84
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :sswitch_0
    return-object p0

    .line 90
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->rlzBrandCode:Ljava/lang/String;

    goto :goto_0

    .line 94
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 95
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    iput v0, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->distributionType:I

    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->rlzBrandCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->rlzBrandCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 54
    :cond_0
    iget v0, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->distributionType:I

    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->distributionType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 57
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 58
    return-void
.end method
