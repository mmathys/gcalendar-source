.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader$TransformRelatedContacts;
.super Ljava/lang/Object;
.source "TimelyEventInfoFragment.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformRelatedContacts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
        "Lcom/android/calendar/event/CalendarEventModel$Attendee;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContactInfoLoader:Lcom/android/calendar/timely/ContactInfoLoader;

.field final synthetic this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;


# direct methods
.method private constructor <init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;)V
    .locals 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader$TransformRelatedContacts;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/android/calendar/timely/ContactInfoLoader;

    invoke-virtual {p1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/ContactInfoLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader$TransformRelatedContacts;->mContactInfoLoader:Lcom/android/calendar/timely/ContactInfoLoader;

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;Lcom/google/android/calendar/event/TimelyEventInfoFragment$1;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader$TransformRelatedContacts;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;)V

    return-void
.end method

.method private resolveFocusContact(J)Lcom/android/calendar/event/CalendarEventModel$Attendee;
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader$TransformRelatedContacts;->mContactInfoLoader:Lcom/android/calendar/timely/ContactInfoLoader;

    .line 139
    invoke-static {}, Lcom/android/calendar/timely/ContactInfo;->newBuilder()Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/ContactInfo$Builder;->setFocusId(Ljava/lang/Long;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/timely/ContactInfo$Builder;->build()Lcom/android/calendar/timely/ContactInfo;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ContactInfoLoader;->load(Lcom/android/calendar/timely/ContactInfo;)Lcom/android/calendar/timely/ContactInfo;

    move-result-object v1

    .line 141
    iget-object v0, v1, Lcom/android/calendar/timely/ContactInfo;->mLookupKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 142
    const-string v0, "TimelyEventInfoFragment"

    const-string v1, "Failed to resolve contact for ID: %x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-direct {v0, v1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;-><init>(Lcom/android/calendar/timely/ContactInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;)Lcom/android/calendar/event/CalendarEventModel$Attendee;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->getAnnotatedContact()Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    move-result-object v1

    .line 125
    if-nez v1, :cond_0

    .line 134
    :goto_0
    return-object v0

    .line 128
    :cond_0
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v2

    instance-of v2, v2, Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;

    if-nez v2, :cond_1

    .line 129
    const-string v2, "TimelyEventInfoFragment"

    const-string v3, "Contact without Focus ID: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 133
    :cond_1
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;

    .line 134
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;->getFocusId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader$TransformRelatedContacts;->resolveFocusContact(J)Lcom/android/calendar/event/CalendarEventModel$Attendee;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader$TransformRelatedContacts;->apply(Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;)Lcom/android/calendar/event/CalendarEventModel$Attendee;

    move-result-object v0

    return-object v0
.end method
