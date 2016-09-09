.class public final Lcom/android/calendar/event/segment/GuestSegment;
.super Lcom/android/calendar/event/segment/InfoSegmentLayout;
.source "GuestSegment.java"

# interfaces
.implements Lcom/android/calendar/event/AttendeesView$Delegate;
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;
    }
.end annotation


# instance fields
.field private final mLabelTypeFace:Landroid/graphics/Typeface;

.field private final mPeoplePartitions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/event/segment/GuestSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/GuestSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/InfoSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mLabelTypeFace:Landroid/graphics/Typeface;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mResources:Landroid/content/res/Resources;

    .line 101
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    .line 102
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;

    sget v3, Lcom/android/calendar/R$id;->status_accepted:I

    sget v4, Lcom/android/calendar/R$id;->label_accepted:I

    sget v5, Lcom/android/calendar/R$string;->attendees_accepted:I

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;-><init>(Lcom/android/calendar/event/segment/GuestSegment;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;

    sget v3, Lcom/android/calendar/R$id;->status_declined:I

    sget v4, Lcom/android/calendar/R$id;->label_declined:I

    sget v5, Lcom/android/calendar/R$string;->attendees_declined:I

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;-><init>(Lcom/android/calendar/event/segment/GuestSegment;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;

    sget v3, Lcom/android/calendar/R$id;->status_tentative:I

    sget v4, Lcom/android/calendar/R$id;->label_tentative:I

    sget v5, Lcom/android/calendar/R$string;->attendees_tentative:I

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;-><init>(Lcom/android/calendar/event/segment/GuestSegment;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;

    sget v3, Lcom/android/calendar/R$id;->status_none:I

    sget v4, Lcom/android/calendar/R$id;->label_none:I

    sget v5, Lcom/android/calendar/R$string;->attendee_none:I

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;-><init>(Lcom/android/calendar/event/segment/GuestSegment;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {p0, v6}, Lcom/android/calendar/event/segment/GuestSegment;->setImportantForAccessibility(I)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/segment/GuestSegment;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mLabelTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static hide(Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x8

    .line 178
    if-nez p0, :cond_2

    move-object v1, v0

    .line 179
    :goto_0
    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :cond_0
    if-nez p0, :cond_3

    .line 183
    :goto_1
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_1
    return-void

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->getLabel()Landroid/widget/TextView;

    move-result-object v1

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->getAttendeesView()Lcom/android/calendar/event/AttendeesView;

    move-result-object v0

    goto :goto_1
.end method

.method private static show(Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 190
    if-nez p0, :cond_2

    move-object v1, v0

    .line 191
    :goto_0
    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_0
    if-nez p0, :cond_3

    .line 195
    :goto_1
    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :cond_1
    return-void

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->getLabel()Landroid/widget/TextView;

    move-result-object v1

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->getAttendeesView()Lcom/android/calendar/event/AttendeesView;

    move-result-object v0

    goto :goto_1
.end method

.method private updatePartition(Lcom/android/calendar/event/CalendarEventModel;Ljava/lang/Integer;Z)Z
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;

    .line 148
    if-nez v0, :cond_0

    .line 173
    :goto_0
    return p3

    .line 152
    :cond_0
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    iget-object v1, v1, Lcom/android/calendar/event/AttendeeCollection;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    .line 153
    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 155
    if-nez v1, :cond_1

    .line 156
    invoke-static {v0}, Lcom/android/calendar/event/segment/GuestSegment;->hide(Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 161
    if-nez v2, :cond_2

    .line 162
    invoke-static {v0}, Lcom/android/calendar/event/segment/GuestSegment;->hide(Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0, v0, v2, p3}, Lcom/android/calendar/event/segment/GuestSegment;->updateAttendeeCount(Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;IZ)V

    .line 167
    invoke-virtual {v0}, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->getAttendeesView()Lcom/android/calendar/event/AttendeesView;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/android/calendar/event/AttendeesView;->clearAttendees()V

    .line 169
    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/lang/String;Ljava/util/List;)V

    .line 171
    invoke-static {v0}, Lcom/android/calendar/event/segment/GuestSegment;->show(Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;)V

    .line 173
    const/4 p3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public analyticsActionForShowContactInfo(Lcom/android/calendar/event/AttendeesView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    const-string v0, "tap_guest"

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/android/calendar/R$layout;->segment_guest:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    return-void
.end method

.method public onRefreshModel()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v3

    .line 126
    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    .line 127
    invoke-virtual {v0}, Lcom/android/calendar/event/AttendeeCollection;->getNumberPeople()I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/GuestSegment;->hide()V

    .line 143
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, v3, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    iget-object v0, v0, Lcom/android/calendar/event/AttendeeCollection;->mStatus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 134
    invoke-direct {p0, v3, v0, v1}, Lcom/android/calendar/event/segment/GuestSegment;->updatePartition(Lcom/android/calendar/event/CalendarEventModel;Ljava/lang/Integer;Z)Z

    move-result v0

    move v1, v0

    .line 135
    goto :goto_1

    .line 137
    :cond_2
    iget-object v0, v3, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    invoke-virtual {v0}, Lcom/android/calendar/event/AttendeeCollection;->getNumberPeople()I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/android/calendar/event/segment/GuestSegment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$plurals;->guest_count:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    sget v1, Lcom/android/calendar/R$id;->guest_count:I

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/segment/GuestSegment;->setText(ILjava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/GuestSegment;->show()V

    goto :goto_0
.end method

.method public onUpdateAccountResponse(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    if-nez v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/GuestSegment;->updateOldPartition(Ljava/lang/String;ILcom/android/calendar/event/CalendarEventModel;)V

    .line 208
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/event/segment/GuestSegment;->updatePartition(Lcom/android/calendar/event/CalendarEventModel;Ljava/lang/Integer;Z)Z

    goto :goto_0
.end method

.method public shouldShowContactInfo(Lcom/android/calendar/event/AttendeesView;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/GuestSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/segment/GuestSegment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/android/calendar/event/segment/GuestSegment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/calendar/Utils;->requestContactsPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/GuestSegment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not get activity to request permissions."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected updateAttendeeCount(Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;IZ)V
    .locals 6

    .prologue
    .line 234
    if-nez p1, :cond_1

    const/4 v0, 0x0

    move-object v2, v0

    .line 235
    :goto_0
    if-eqz v2, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->getLabelFormat()I

    move-result v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    if-eqz p3, :cond_0

    .line 242
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 243
    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 244
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/calendar/event/segment/GuestSegment;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->guest_segment_partition_margin_top:I

    .line 245
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 246
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    :cond_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    move-object v2, v0

    goto :goto_0
.end method

.method protected updateOldPartition(Ljava/lang/String;ILcom/android/calendar/event/CalendarEventModel;)V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->getAttendeesView()Lcom/android/calendar/event/AttendeesView;

    move-result-object v1

    .line 216
    invoke-virtual {v1, p1}, Lcom/android/calendar/event/AttendeesView;->removeAccount(Ljava/lang/String;)V

    .line 218
    iget-object v1, p3, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    iget-object v1, v1, Lcom/android/calendar/event/AttendeeCollection;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    .line 219
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 220
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 222
    if-nez v1, :cond_1

    .line 223
    invoke-static {v0}, Lcom/android/calendar/event/segment/GuestSegment;->hide(Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calendar/event/segment/GuestSegment;->updateAttendeeCount(Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;IZ)V

    goto :goto_0
.end method
