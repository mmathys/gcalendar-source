.class public Lcom/google/android/calendar/event/TimelyEditHelper;
.super Lcom/android/calendar/event/EditHelper;
.source "TimelyEditHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;
    }
.end annotation


# static fields
.field private static final DEFAULT_EVENT_DURATION_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TIMELY_CALENDAR_PROJECTION:[Ljava/lang/String;

.field private static sExtrasLoader:Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-class v0, Lcom/google/android/calendar/event/TimelyEditHelper;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/TimelyEditHelper;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accountName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "defaultEventLength"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "defaultNoEndTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/calendar/event/TimelyEditHelper;->DEFAULT_EVENT_DURATION_PROJECTION:[Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->CALENDARS_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/android/calendar/event/LoadDetailsConstants;->CALENDARS_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/calendar/event/TimelyEditHelper;->TIMELY_CALENDAR_PROJECTION:[Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/google/android/calendar/event/TimelyEditHelper;->TIMELY_CALENDAR_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/calendar/event/TimelyEditHelper;->TIMELY_CALENDAR_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, "cal_sync9"

    aput-object v2, v0, v1

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditHelper;-><init>(Landroid/content/Context;)V

    .line 98
    return-void
.end method


# virtual methods
.method public applyAttachmentExtrasFromEvent(Lcom/android/calendar/event/EventExtras;Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/android/calendar/event/EventExtras;
    .locals 6

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    new-instance v0, Lcom/google/android/calendar/event/EventExtrasImpl;

    invoke-direct {v0}, Lcom/google/android/calendar/event/EventExtrasImpl;-><init>()V

    .line 241
    :goto_0
    check-cast v0, Lcom/google/android/calendar/event/EventExtrasImpl;

    .line 242
    const/4 v1, 0x0

    .line 243
    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/events/Event;->getAttachments()Ljava/util/List;

    move-result-object v3

    .line 245
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 246
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/events/Attachment;

    .line 248
    new-instance v4, Lcom/google/api/services/calendar/model/EventAttachment;

    invoke-direct {v4}, Lcom/google/api/services/calendar/model/EventAttachment;-><init>()V

    .line 249
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attachment;->getFileUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/api/services/calendar/model/EventAttachment;->setFileUrl(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v4

    .line 250
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attachment;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/api/services/calendar/model/EventAttachment;->setTitle(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v4

    .line 251
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attachment;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/api/services/calendar/model/EventAttachment;->setIconLink(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v1

    .line 252
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :cond_0
    instance-of v0, p1, Lcom/google/android/calendar/event/EventExtrasImpl;

    if-nez v0, :cond_3

    .line 236
    sget-object v0, Lcom/google/android/calendar/event/TimelyEditHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected type: %s, will not apply attachments"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    :goto_2
    return-object p1

    :cond_1
    move-object v1, v2

    .line 255
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/EventExtrasImpl;->setAttachments(Ljava/util/List;)V

    move-object p1, v0

    .line 256
    goto :goto_2

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method public applyLocationExtrasFromEventV2(Lcom/android/calendar/event/EventExtras;Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/android/calendar/event/EventExtras;
    .locals 5

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    new-instance v0, Lcom/google/android/calendar/event/EventExtrasImpl;

    invoke-direct {v0}, Lcom/google/android/calendar/event/EventExtrasImpl;-><init>()V

    .line 210
    :goto_0
    check-cast v0, Lcom/google/android/calendar/event/EventExtrasImpl;

    .line 212
    const/4 v1, 0x0

    .line 214
    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStructuredLocation()Ljava/util/List;

    move-result-object v3

    .line 215
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 216
    new-instance v2, Lcom/google/api/services/calendar/model/StructuredLocation;

    invoke-direct {v2}, Lcom/google/api/services/calendar/model/StructuredLocation;-><init>()V

    .line 217
    new-instance v1, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v1}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/api/services/calendar/model/StructuredLocation;->setFactory(Lcom/google/api/client/json/JsonFactory;)V

    .line 218
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    .line 221
    invoke-static {v1}, Lcom/google/android/calendar/event/EventExtrasImpl;->convertFromEventLocationV2(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)Lcom/google/api/services/calendar/model/EventLocation;

    move-result-object v1

    .line 222
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_0
    instance-of v0, p1, Lcom/google/android/calendar/event/EventExtrasImpl;

    if-nez v0, :cond_3

    .line 206
    sget-object v0, Lcom/google/android/calendar/event/TimelyEditHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected type: %s, will not apply location"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 227
    :goto_2
    return-object p1

    .line 224
    :cond_1
    invoke-virtual {v2, v4}, Lcom/google/api/services/calendar/model/StructuredLocation;->setLocations(Ljava/util/List;)Lcom/google/api/services/calendar/model/StructuredLocation;

    move-object v1, v2

    .line 226
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/EventExtrasImpl;->setStructuredLocation(Lcom/google/api/services/calendar/model/StructuredLocation;)V

    move-object p1, v0

    .line 227
    goto :goto_2

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method public applyTitleAnnotationExtrasFromEvent(Lcom/android/calendar/event/EventExtras;Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/android/calendar/event/EventExtras;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance v0, Lcom/google/android/calendar/event/EventExtrasImpl;

    invoke-direct {v0}, Lcom/google/android/calendar/event/EventExtrasImpl;-><init>()V

    .line 166
    :goto_0
    check-cast v0, Lcom/google/android/calendar/event/EventExtrasImpl;

    .line 168
    const/4 v1, 0x0

    .line 169
    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/events/Event;->getTitleAnnotations()Ljava/util/List;

    move-result-object v3

    .line 170
    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/events/Event;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 171
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;

    .line 174
    new-instance v5, Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;

    invoke-direct {v5}, Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;-><init>()V

    .line 175
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->getAnnotatedText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;->setText(Ljava/lang/String;)Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;

    move-result-object v5

    .line 177
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->getStartOffset()I

    move-result v6

    .line 176
    invoke-static {v4, v6}, Lcom/android/calendar/Utils;->javaToUnicodeCharOffset(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;->setStart(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;

    move-result-object v5

    .line 178
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->getAnnotatedContact()Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    move-result-object v6

    .line 179
    if-nez v6, :cond_1

    .line 180
    sget-object v5, Lcom/google/android/calendar/event/TimelyEditHelper;->TAG:Ljava/lang/String;

    const-string v6, "Unexpected title annotation without contact %s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v1, v7, v10

    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 160
    :cond_0
    instance-of v0, p1, Lcom/google/android/calendar/event/EventExtrasImpl;

    if-nez v0, :cond_5

    .line 162
    sget-object v0, Lcom/google/android/calendar/event/TimelyEditHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected type: %s, will not apply title annotations"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object p1, v2, v10

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 197
    :goto_2
    return-object p1

    .line 184
    :cond_1
    new-instance v7, Lcom/google/api/services/calendar/model/ContactReference;

    invoke-direct {v7}, Lcom/google/api/services/calendar/model/ContactReference;-><init>()V

    .line 185
    invoke-interface {v6}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v1

    instance-of v1, v1, Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;

    if-eqz v1, :cond_2

    .line 186
    invoke-interface {v6}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;->getFocusId()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/api/services/calendar/model/ContactReference;->setFocusId(Ljava/lang/Long;)Lcom/google/api/services/calendar/model/ContactReference;

    .line 188
    new-instance v1, Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    invoke-direct {v1}, Lcom/google/api/services/calendar/model/TitleContactAnnotation;-><init>()V

    .line 189
    invoke-virtual {v1, v5}, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->setAnnotation(Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;)Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    move-result-object v1

    .line 190
    invoke-virtual {v1, v7}, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->setContact(Lcom/google/api/services/calendar/model/ContactReference;)Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    move-result-object v1

    .line 188
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    :cond_2
    sget-object v1, Lcom/google/android/calendar/event/TimelyEditHelper;->TAG:Ljava/lang/String;

    const-string v5, "Skipping contact without Focus ID: %s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v6, v7, v10

    invoke-static {v1, v5, v7}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    :cond_3
    move-object v1, v2

    .line 196
    :cond_4
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/EventExtrasImpl;->setTitleContactAnnotations(Ljava/util/List;)V

    move-object p1, v0

    .line 197
    goto :goto_2

    :cond_5
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public getAttachmentListFromExtras(Lcom/android/calendar/event/EventExtras;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/EventExtras;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    instance-of v1, p1, Lcom/google/android/calendar/event/EventExtrasImpl;

    if-eqz v1, :cond_1

    .line 264
    check-cast p1, Lcom/google/android/calendar/event/EventExtrasImpl;

    .line 265
    invoke-virtual {p1}, Lcom/google/android/calendar/event/EventExtrasImpl;->getAttachments()Ljava/util/List;

    move-result-object v2

    .line 266
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventAttachment;

    .line 269
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/events/Attachment;->newBuilder()Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;

    move-result-object v3

    .line 270
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventAttachment;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->setTitle(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;

    move-result-object v3

    .line 271
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventAttachment;->getIconLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->setIconUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;

    move-result-object v3

    .line 272
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventAttachment;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->setFileUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->build()Lcom/google/calendar/v2/client/service/api/events/Attachment;

    move-result-object v0

    .line 274
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 278
    :cond_1
    return-object v0
.end method

.method public getAutoAddHangout(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 318
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->autoAddHangoutsEnabled()Z

    move-result v0

    .line 318
    return v0
.end method

.method public getCalendarsProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/android/calendar/event/TimelyEditHelper;->TIMELY_CALENDAR_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultEventDurationCursor(Landroid/content/Context;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 289
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->ACCOUNT_SETTINGS_URI:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/calendar/event/TimelyEditHelper;->DEFAULT_EVENT_DURATION_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExtendedPropertiesFromModel(Lcom/android/calendar/event/CalendarEventModel;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/CalendarEventModel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/calendar/event/EditHelper;->getExtendedPropertiesFromModel(Lcom/android/calendar/event/CalendarEventModel;)Ljava/util/Map;

    move-result-object v1

    .line 113
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    check-cast v0, Lcom/google/android/calendar/event/EventExtrasImpl;

    .line 115
    invoke-virtual {v0}, Lcom/google/android/calendar/event/EventExtrasImpl;->getStructuredLocation()Lcom/google/api/services/calendar/model/StructuredLocation;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_0

    .line 121
    const-string v3, "locationExtra"

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/StructuredLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/calendar/event/EventExtrasImpl;->titleContactAnnotationsAsString()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    const-string v3, "titleContactsExtra"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/calendar/event/EventExtrasImpl;->attachmentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    const-string v2, "attachmentsExtra"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_2
    return-object v1
.end method

.method public getExtrasLoader(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/calendar/event/CalendarEventModel;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/event/EventExtras;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p2}, Lcom/android/calendar/event/EditHelper;->canModifyEvent(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 143
    sget-object v0, Lcom/google/android/calendar/event/TimelyEditHelper;->sExtrasLoader:Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;

    invoke-direct {v0, p1, p2}, Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;-><init>(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;)V

    sput-object v0, Lcom/google/android/calendar/event/TimelyEditHelper;->sExtrasLoader:Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;

    .line 146
    :cond_0
    sget-object v0, Lcom/google/android/calendar/event/TimelyEditHelper;->sExtrasLoader:Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;

    .line 148
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsCalendarSharedColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "cal_sync9"

    return-object v0
.end method

.method public getTaskCalendarColor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 283
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->getTaskColor()I

    move-result v0

    .line 283
    return v0
.end method

.method public hasExtrasLoader()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public isThorSupportedForCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 325
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->isThorSupportedForCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadExtras(Landroid/content/Context;JJ)Lcom/android/calendar/event/EventExtras;
    .locals 2

    .prologue
    .line 153
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/calendar/event/EventExtrasImpl;->createEventExtras(Landroid/content/Context;JJ)Lcom/google/android/calendar/event/EventExtrasImpl;

    move-result-object v0

    return-object v0
.end method

.method public setCalendarFromDefaultEventDuration(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;Landroid/database/Cursor;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 296
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    :cond_0
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 299
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 300
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 303
    const/4 v3, 0x2

    .line 304
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 306
    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, -0x1

    .line 307
    :cond_1
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->builderFrom(Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    move-result-object v1

    .line 308
    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setDefaultEventDuration(I)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->build()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object p1

    .line 313
    :cond_2
    :goto_1
    return-object p1

    :cond_3
    move v1, v2

    .line 304
    goto :goto_0

    .line 310
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1
.end method
