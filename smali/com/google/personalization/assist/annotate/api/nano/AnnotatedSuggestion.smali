.class public final Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AnnotatedSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;


# instance fields
.field public annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

.field public annotationHint:Ljava/lang/String;

.field public completionFragments:Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

.field public displayString:Ljava/lang/String;

.field public dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

.field public flexScheduleInfo:Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;

.field public htmlSuggestion:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public renderingData:Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

.field public subsubtext:Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

.field public subtext:Ljava/lang/String;

.field public suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->query:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotationHint:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->htmlSuggestion:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subtext:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->displayString:Ljava/lang/String;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->cachedSize:I

    .line 71
    return-void
.end method

.method public static emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

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

.method public static parseFrom([B)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->query:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 122
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->query:Ljava/lang/String;

    .line 123
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotationHint:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 126
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotationHint:Ljava/lang/String;

    .line 127
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->renderingData:Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

    if-eqz v1, :cond_2

    .line 130
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->renderingData:Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

    .line 131
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->htmlSuggestion:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 134
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->htmlSuggestion:Ljava/lang/String;

    .line 135
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->completionFragments:Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

    if-eqz v1, :cond_4

    .line 138
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->completionFragments:Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

    .line 139
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subtext:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 142
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subtext:Ljava/lang/String;

    .line 143
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    if-eqz v1, :cond_6

    .line 146
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    .line 147
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->displayString:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 150
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->displayString:Ljava/lang/String;

    .line 151
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_7
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-eqz v1, :cond_8

    .line 154
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    .line 155
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_8
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_9

    .line 158
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 159
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    :cond_9
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    if-eqz v1, :cond_a

    .line 162
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    .line 163
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_a
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subsubtext:Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

    if-eqz v1, :cond_b

    .line 166
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subsubtext:Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

    .line 167
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_b
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->flexScheduleInfo:Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;

    if-eqz v1, :cond_c

    .line 170
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->flexScheduleInfo:Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;

    .line 171
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_c
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 182
    sparse-switch v0, :sswitch_data_0

    .line 186
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :sswitch_0
    return-object p0

    .line 192
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->query:Ljava/lang/String;

    goto :goto_0

    .line 196
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotationHint:Ljava/lang/String;

    goto :goto_0

    .line 200
    :sswitch_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->renderingData:Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->renderingData:Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->renderingData:Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 207
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->htmlSuggestion:Ljava/lang/String;

    goto :goto_0

    .line 211
    :sswitch_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->completionFragments:Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

    if-nez v0, :cond_2

    .line 212
    new-instance v0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

    invoke-direct {v0}, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->completionFragments:Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->completionFragments:Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 218
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subtext:Ljava/lang/String;

    goto :goto_0

    .line 222
    :sswitch_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    if-nez v0, :cond_3

    .line 223
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 229
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->displayString:Ljava/lang/String;

    goto :goto_0

    .line 233
    :sswitch_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-nez v0, :cond_4

    .line 234
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Annotation;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 240
    :sswitch_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_5

    .line 241
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 247
    :sswitch_b
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    if-nez v0, :cond_6

    .line 248
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    .line 250
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 254
    :sswitch_c
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subsubtext:Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

    if-nez v0, :cond_7

    .line 255
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/FormattedText;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subsubtext:Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

    .line 257
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subsubtext:Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 261
    :sswitch_d
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->flexScheduleInfo:Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;

    if-nez v0, :cond_8

    .line 262
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->flexScheduleInfo:Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;

    .line 264
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->flexScheduleInfo:Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 182
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

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
    .line 76
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->query:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->query:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotationHint:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 80
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotationHint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->renderingData:Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

    if-eqz v0, :cond_2

    .line 83
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->renderingData:Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->htmlSuggestion:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 86
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->htmlSuggestion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->completionFragments:Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

    if-eqz v0, :cond_4

    .line 89
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->completionFragments:Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subtext:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 92
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subtext:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    if-eqz v0, :cond_6

    .line 95
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 97
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->displayString:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 98
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->displayString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 100
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-eqz v0, :cond_8

    .line 101
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 103
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_9

    .line 104
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 106
    :cond_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    if-eqz v0, :cond_a

    .line 107
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 109
    :cond_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subsubtext:Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

    if-eqz v0, :cond_b

    .line 110
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subsubtext:Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 112
    :cond_b
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->flexScheduleInfo:Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;

    if-eqz v0, :cond_c

    .line 113
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->flexScheduleInfo:Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 115
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 116
    return-void
.end method
