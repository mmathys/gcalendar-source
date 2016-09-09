.class public Lcom/android/calendar/event/AttendeesView;
.super Landroid/widget/LinearLayout;
.source "AttendeesView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/AttendeesView$Delegate;
    }
.end annotation


# static fields
.field public static final MAP_TO_RESPONSE:[I


# instance fields
.field protected mAnalyticsCategory:Ljava/lang/String;

.field private final mContactPhotoHeight:I

.field private final mContactPhotoWidth:I

.field private mDelegate:Lcom/android/calendar/event/AttendeesView$Delegate;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/calendar/R$string;->attendee_not_responded:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/calendar/R$string;->attendee_accepted:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/calendar/R$string;->attendee_declined:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/calendar/R$string;->attendee_not_responded:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/calendar/R$string;->attendee_tentative:I

    aput v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/AttendeesView;->MAP_TO_RESPONSE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_category_event_action:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mAnalyticsCategory:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mResources:Landroid/content/res/Resources;

    .line 90
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    .line 92
    iput v2, p0, Lcom/android/calendar/event/AttendeesView;->mContactPhotoWidth:I

    .line 93
    iput v2, p0, Lcom/android/calendar/event/AttendeesView;->mContactPhotoHeight:I

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->guest_segment_contact_badge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/AttendeesView;->mContactPhotoWidth:I

    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->guest_segment_contact_badge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/AttendeesView;->mContactPhotoHeight:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/calendar/event/AttendeesView;)Lcom/android/calendar/event/AttendeesView$Delegate;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mDelegate:Lcom/android/calendar/event/AttendeesView$Delegate;

    return-object v0
.end method

.method private addOneAttendee(Ljava/lang/String;Lcom/android/calendar/event/CalendarEventModel$Attendee;)V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/android/calendar/event/EditHelper$AttendeeItem;

    invoke-direct {v0, p2}, Lcom/android/calendar/event/EditHelper$AttendeeItem;-><init>(Lcom/android/calendar/event/CalendarEventModel$Attendee;)V

    .line 200
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/AttendeesView;->constructAttendeeView(Ljava/lang/String;Lcom/android/calendar/event/EditHelper$AttendeeItem;)Landroid/view/View;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/AttendeesView;->addView(Landroid/view/View;)V

    .line 204
    :cond_0
    return-void
.end method

.method private constructAttendeeView(Ljava/lang/String;Lcom/android/calendar/event/EditHelper$AttendeeItem;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 114
    iget-object v0, p2, Lcom/android/calendar/event/EditHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->isOrganizer()Z

    move-result v3

    .line 115
    if-eqz v3, :cond_0

    sget v0, Lcom/android/calendar/R$layout;->organizer_item:I

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p2, Lcom/android/calendar/event/EditHelper$AttendeeItem;->mView:Landroid/view/View;

    .line 117
    if-nez v2, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 165
    :goto_1
    return-object v0

    .line 115
    :cond_0
    sget v0, Lcom/android/calendar/R$layout;->contact_item:I

    goto :goto_0

    .line 121
    :cond_1
    iget-object v4, p2, Lcom/android/calendar/event/EditHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 123
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    sget v0, Lcom/android/calendar/R$id;->name:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    invoke-virtual {v4}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 128
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    if-eqz v3, :cond_2

    .line 131
    sget v0, Lcom/android/calendar/R$id;->relation:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    sget v1, Lcom/android/calendar/R$string;->attendee_organizer:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :cond_2
    sget v0, Lcom/android/calendar/R$id;->badge:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 137
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 138
    new-instance v3, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    iget-object v5, p0, Lcom/android/calendar/event/AttendeesView;->mResources:Landroid/content/res/Resources;

    .line 139
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getContactPhotoCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v6

    invoke-direct {v3, v5, v6, v7}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Z)V

    .line 140
    new-instance v5, Lcom/android/calendar/timely/ContactPhotoRequestKey;

    .line 141
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p2, Lcom/android/calendar/event/EditHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-virtual {v6}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getContactInfo()Lcom/android/calendar/timely/ContactInfo;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/android/calendar/timely/ContactPhotoRequestKey;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ContactInfo;)V

    .line 142
    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mContactPhotoWidth:I

    iget v6, p0, Lcom/android/calendar/event/AttendeesView;->mContactPhotoHeight:I

    invoke-virtual {v3, v1, v6}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setDecodeDimensions(II)V

    .line 143
    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mContactPhotoWidth:I

    iget v6, p0, Lcom/android/calendar/event/AttendeesView;->mContactPhotoHeight:I

    invoke-virtual {v3, v7, v7, v1, v6}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setBounds(IIII)V

    .line 144
    invoke-virtual {v3, v5}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 145
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    new-instance v0, Lcom/android/calendar/event/AttendeesView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/calendar/event/AttendeesView$1;-><init>(Lcom/android/calendar/event/AttendeesView;Ljava/lang/String;Lcom/android/calendar/event/EditHelper$AttendeeItem;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-direct {p0, v4}, Lcom/android/calendar/event/AttendeesView;->getAttendeeContentDescription(Lcom/android/calendar/event/CalendarEventModel$Attendee;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 165
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v4}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private getAttendeeContentDescription(Lcom/android/calendar/event/CalendarEventModel$Attendee;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 172
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->isOrganizer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/android/calendar/R$string;->attendee_organizer:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    sget-object v3, Lcom/android/calendar/event/AttendeesView;->MAP_TO_RESPONSE:[I

    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getStatus()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->button_label:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    return-object v0

    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addAttendees(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/AttendeesView;->addOneAttendee(Ljava/lang/String;Lcom/android/calendar/event/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    return-void
.end method

.method public clearAttendees()V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->removeAllViews()V

    .line 191
    return-void
.end method

.method public removeAccount(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->getChildCount()I

    move-result v2

    .line 228
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 229
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 230
    if-eqz v3, :cond_2

    .line 231
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 232
    instance-of v4, v0, Lcom/android/calendar/event/EditHelper$AttendeeItem;

    if-eqz v4, :cond_1

    .line 233
    check-cast v0, Lcom/android/calendar/event/EditHelper$AttendeeItem;

    .line 234
    :goto_1
    if-eqz v0, :cond_2

    .line 235
    iget-object v0, v0, Lcom/android/calendar/event/EditHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p0, v3}, Lcom/android/calendar/event/AttendeesView;->removeView(Landroid/view/View;)V

    .line 242
    :cond_0
    return-void

    .line 233
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 228
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setDelegate(Lcom/android/calendar/event/AttendeesView$Delegate;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/calendar/event/AttendeesView;->mDelegate:Lcom/android/calendar/event/AttendeesView$Delegate;

    .line 83
    return-void
.end method
