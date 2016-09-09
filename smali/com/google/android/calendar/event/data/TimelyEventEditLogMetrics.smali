.class public Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;
.super Lcom/android/calendar/event/data/EventEditLogMetrics;
.source "TimelyEventEditLogMetrics.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDidQuickCreateSetContacts:Z

.field private mDidQuickCreateSetLocation:Z

.field private mDidQuickCreateSetTime:Z

.field private mOnGmailAccount:Ljava/lang/Boolean;

.field private mQuickCreateStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics$1;

    invoke-direct {v0}, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/calendar/event/data/EventEditLogMetrics;-><init>()V

    .line 63
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 248
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/EventEditLogMetrics;-><init>(Landroid/os/Parcel;)V

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetTime:Z

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetLocation:Z

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetContacts:Z

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 255
    if-nez v0, :cond_4

    .line 256
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 257
    :goto_3
    iput-object v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mOnGmailAccount:Ljava/lang/Boolean;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mQuickCreateStatus:I

    .line 259
    return-void

    :cond_1
    move v0, v2

    .line 249
    goto :goto_0

    :cond_2
    move v0, v2

    .line 251
    goto :goto_1

    :cond_3
    move v0, v2

    .line 252
    goto :goto_2

    .line 257
    :cond_4
    if-ne v0, v1, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method protected logSaveCustomDimensions(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/events/EventEdit;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logSaveCustomDimensions(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/events/EventEdit;)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 89
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v3

    .line 91
    iget-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetTime:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetLocation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetContacts:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 94
    :goto_0
    invoke-virtual {p2}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isNewEvent()Z

    move-result v4

    .line 95
    invoke-virtual {p2}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v5

    .line 96
    invoke-virtual {p2}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getOriginalEvent()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v6

    .line 97
    invoke-static {p2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->from(Lcom/google/calendar/v2/client/service/api/events/EventEdit;)Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;

    move-result-object v7

    .line 101
    if-eqz v4, :cond_4

    iget-boolean v8, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetContacts:Z

    if-eqz v8, :cond_4

    .line 102
    invoke-interface {v5}, Lcom/google/calendar/v2/client/service/api/events/Event;->getTitleAnnotations()Ljava/util/List;

    move-result-object v8

    .line 103
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 104
    :cond_1
    const/16 v8, 0xa

    .line 105
    invoke-static {v1, v8}, Lcom/android/calendar/AnalyticsUtils;->convertNumToDimensionValue(II)Ljava/lang/String;

    move-result-object v1

    .line 119
    :goto_1
    if-eqz v1, :cond_2

    .line 120
    sget v8, Lcom/android/calendar/R$integer;->analytics_event_edit_num_tagged_contacts_dimension:I

    .line 121
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 120
    invoke-interface {v3, p1, v8, v1}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 129
    :cond_2
    if-eqz v4, :cond_a

    .line 130
    iget-boolean v1, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetLocation:Z

    if-eqz v1, :cond_7

    .line 131
    const-string v1, "QC"

    .line 152
    :goto_2
    sget v8, Lcom/android/calendar/R$integer;->analytics_event_edit_location_dimension:I

    .line 153
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 152
    invoke-interface {v3, p1, v8, v1}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 158
    if-eqz v4, :cond_f

    .line 159
    if-eqz v0, :cond_d

    .line 160
    const-string v0, "QC"

    .line 175
    :goto_3
    sget v1, Lcom/android/calendar/R$integer;->analytics_event_edit_title_dimension:I

    .line 176
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 175
    invoke-interface {v3, p1, v1, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 182
    if-eqz v4, :cond_13

    .line 183
    iget-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidChangeNotification:Z

    if-eqz v0, :cond_12

    .line 184
    const-string v0, "override"

    .line 192
    :goto_4
    sget v1, Lcom/android/calendar/R$integer;->analytics_event_edit_notification_dimension:I

    .line 193
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 192
    invoke-interface {v3, p1, v1, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 198
    if-eqz v4, :cond_1b

    .line 199
    invoke-interface {v5}, Lcom/google/calendar/v2/client/service/api/events/Event;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 200
    const-string v0, "allDay"

    .line 202
    :goto_5
    iget-boolean v1, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidChangeTime:Z

    if-eqz v1, :cond_17

    .line 203
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "Picker"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_6
    sget v1, Lcom/android/calendar/R$integer;->analytics_event_edit_time_dimension:I

    .line 219
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 218
    invoke-interface {v3, p1, v1, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 225
    iget v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mQuickCreateStatus:I

    packed-switch v0, :pswitch_data_0

    .line 233
    :pswitch_0
    const-string v0, "disabled"

    .line 237
    :goto_7
    sget v1, Lcom/android/calendar/R$integer;->analytics_event_edit_quick_create_status_dimension:I

    .line 238
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 237
    invoke-interface {v3, p1, v1, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 241
    return-void

    :cond_3
    move v0, v1

    .line 91
    goto/16 :goto_0

    .line 107
    :cond_4
    if-nez v4, :cond_6

    .line 109
    if-eqz v6, :cond_5

    .line 110
    invoke-interface {v6}, Lcom/google/calendar/v2/client/service/api/events/Event;->getTitleAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v5}, Lcom/google/calendar/v2/client/service/api/events/Event;->getTitleAnnotations()Ljava/util/List;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 111
    const-string v1, "changed"

    goto/16 :goto_1

    .line 113
    :cond_5
    const-string v1, "unchanged"

    goto/16 :goto_1

    .line 116
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 132
    :cond_7
    invoke-interface {v5}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStructuredLocation()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 133
    invoke-interface {v5}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStructuredLocation()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 134
    const-string v1, "structured"

    goto/16 :goto_2

    .line 135
    :cond_8
    invoke-interface {v5}, Lcom/google/calendar/v2/client/service/api/events/Event;->getLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v5}, Lcom/google/calendar/v2/client/service/api/events/Event;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 136
    const-string v1, "text"

    goto/16 :goto_2

    .line 138
    :cond_9
    const-string v1, "none"

    goto/16 :goto_2

    .line 141
    :cond_a
    iget-boolean v1, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetLocation:Z

    if-eqz v1, :cond_b

    .line 142
    const-string v1, "changedQC"

    goto/16 :goto_2

    .line 144
    :cond_b
    invoke-virtual {v7}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasLocationChanges()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 145
    const-string v1, "changed"

    goto/16 :goto_2

    .line 147
    :cond_c
    const-string v1, "unchanged"

    goto/16 :goto_2

    .line 161
    :cond_d
    invoke-interface {v5}, Lcom/google/calendar/v2/client/service/api/events/Event;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 162
    const-string v0, "set"

    goto/16 :goto_3

    .line 164
    :cond_e
    const-string v0, "none"

    goto/16 :goto_3

    .line 167
    :cond_f
    invoke-virtual {v7}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasTitleChanges()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 168
    if-eqz v0, :cond_10

    .line 169
    const-string v0, "changedQC"

    goto/16 :goto_3

    :cond_10
    const-string v0, "changed"

    goto/16 :goto_3

    .line 171
    :cond_11
    const-string v0, "unchanged"

    goto/16 :goto_3

    .line 184
    :cond_12
    const-string v0, "default"

    goto/16 :goto_4

    .line 186
    :cond_13
    if-eqz v6, :cond_14

    invoke-interface {v6}, Lcom/google/calendar/v2/client/service/api/events/Event;->getReminders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5}, Lcom/google/calendar/v2/client/service/api/events/Event;->getReminders()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 187
    const-string v0, "changed"

    goto/16 :goto_4

    .line 189
    :cond_14
    const-string v0, "unchanged"

    goto/16 :goto_4

    .line 201
    :cond_15
    const-string v0, "time"

    goto/16 :goto_5

    .line 203
    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 204
    :cond_17
    iget-boolean v1, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetTime:Z

    if-eqz v1, :cond_19

    .line 205
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "QC"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_18
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 207
    :cond_19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "Preset"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_1a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 210
    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidChangeTime:Z

    if-eqz v0, :cond_1c

    .line 211
    const-string v0, "changed"

    goto/16 :goto_6

    .line 212
    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetTime:Z

    if-eqz v0, :cond_1d

    .line 213
    const-string v0, "changedQC"

    goto/16 :goto_6

    .line 215
    :cond_1d
    const-string v0, "unchanged"

    goto/16 :goto_6

    .line 227
    :pswitch_1
    const-string v0, "active"

    goto/16 :goto_7

    .line 230
    :pswitch_2
    const-string v0, "unreachable"

    goto/16 :goto_7

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDidQuickCreateSetContacts()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetContacts:Z

    .line 75
    return-void
.end method

.method public setDidQuickCreateSetLocation()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetLocation:Z

    .line 71
    return-void
.end method

.method public setDidQuickCreateSetTime()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetTime:Z

    .line 67
    return-void
.end method

.method public setOnGmailAccount(Z)V
    .locals 1

    .prologue
    .line 78
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mOnGmailAccount:Ljava/lang/Boolean;

    .line 79
    return-void
.end method

.method public setQuickCreateActive()V
    .locals 2

    .prologue
    .line 295
    iget v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mQuickCreateStatus:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mQuickCreateStatus:I

    .line 296
    return-void
.end method

.method public setQuickCreateDisabled()V
    .locals 2

    .prologue
    .line 303
    iget v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mQuickCreateStatus:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mQuickCreateStatus:I

    .line 304
    return-void
.end method

.method public setQuickCreateUnreachable()V
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mQuickCreateStatus:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mQuickCreateStatus:I

    .line 300
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/data/EventEditLogMetrics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 269
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetTime:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 272
    iget-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetLocation:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 273
    iget-boolean v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mDidQuickCreateSetContacts:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 274
    iget-object v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mOnGmailAccount:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    const/4 v1, -0x1

    :cond_0
    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 275
    iget v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mQuickCreateStatus:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 276
    return-void

    :cond_1
    move v0, v2

    .line 271
    goto :goto_0

    :cond_2
    move v0, v2

    .line 272
    goto :goto_1

    :cond_3
    move v0, v2

    .line 273
    goto :goto_2

    .line 274
    :cond_4
    iget-object v0, p0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->mOnGmailAccount:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_3
.end method
