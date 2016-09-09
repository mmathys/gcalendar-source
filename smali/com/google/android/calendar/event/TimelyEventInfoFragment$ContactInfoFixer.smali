.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$ContactInfoFixer;
.super Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;
.source "TimelyEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactInfoFixer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/calendar/timely/ContactInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mModel:Lcom/android/calendar/event/CalendarEventModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iput-object p2, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ContactInfoFixer;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 244
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ContactInfoFixer;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ContactInfoFixer;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 250
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getContactInfo()Lcom/android/calendar/timely/ContactInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/calendar/timely/ContactInfo;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getContactInfo()Lcom/android/calendar/timely/ContactInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    new-instance v0, Lcom/android/calendar/timely/ContactInfoLoader;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ContactInfoFixer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/calendar/timely/ContactInfoLoader;-><init>(Landroid/content/Context;)V

    .line 256
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ContactInfoLoader;->loadFully(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 258
    :goto_1
    return-object v0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
