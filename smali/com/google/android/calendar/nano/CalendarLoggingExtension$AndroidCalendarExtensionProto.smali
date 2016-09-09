.class public final Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CalendarLoggingExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/nano/CalendarLoggingExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidCalendarExtensionProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;",
        ">;"
    }
.end annotation


# instance fields
.field public actionType:I

.field public distributionInvariants:Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->clear()Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;

    .line 44
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->actionType:I

    .line 48
    iput-object v1, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->distributionInvariants:Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;

    .line 49
    iput-object v1, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->cachedSize:I

    .line 51
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 69
    iget v1, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->actionType:I

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->actionType:I

    .line 71
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->distributionInvariants:Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->distributionInvariants:Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;

    .line 75
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 86
    sparse-switch v0, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :sswitch_0
    return-object p0

    .line 96
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 97
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    iput v0, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->actionType:I

    goto :goto_0

    .line 109
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->distributionInvariants:Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;

    invoke-direct {v0}, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->distributionInvariants:Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->distributionInvariants:Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
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
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;

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
    .line 57
    iget v0, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->actionType:I

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->actionType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->distributionInvariants:Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->distributionInvariants:Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 63
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 64
    return-void
.end method
