.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;
.super Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;
.source "TimelyEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimelyExtraLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader$TransformRelatedContacts;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mModel:Lcom/android/calendar/event/CalendarEventModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;-><init>(Landroid/content/Context;)V

    .line 152
    iput-object p2, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 153
    return-void
.end method


# virtual methods
.method public loadInBackground()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v3, v0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    invoke-static/range {v1 .. v7}, Lcom/google/android/calendar/event/EventExtrasImpl;->createEventExtras(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/calendar/event/EventExtrasImpl;

    move-result-object v2

    .line 165
    if-eqz v2, :cond_3

    .line 166
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    .line 167
    invoke-virtual {v2}, Lcom/google/android/calendar/event/EventExtrasImpl;->getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/calendar/event/EventExtrasImpl;->getTitleAnnotations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 173
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v5, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader$TransformRelatedContacts;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader$TransformRelatedContacts;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;Lcom/google/android/calendar/event/TimelyEventInfoFragment$1;)V

    .line 177
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 179
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;

    invoke-interface {v5, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 180
    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {v2, v4}, Lcom/google/android/calendar/event/EventExtrasImpl;->setRelatedContacts(Ljava/util/List;)V

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    goto :goto_0
.end method
