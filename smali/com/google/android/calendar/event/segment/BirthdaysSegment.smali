.class public Lcom/google/android/calendar/event/segment/BirthdaysSegment;
.super Lcom/android/calendar/event/segment/InfoSegmentLayout;
.source "BirthdaysSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/segment/BirthdaysSegment$BirthdayProvider;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContactPhotoHeight:I

.field private final mContactPhotoWidth:I

.field private final mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPeople:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    const-class v0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->$assertionsDisabled:Z

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v0, v2

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 29
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/InfoSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    sget v0, Lcom/android/calendar/R$id;->people:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mPeople:Landroid/widget/LinearLayout;

    .line 71
    iput-object p1, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    sget-boolean v1, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    sget v1, Lcom/android/calendar/R$dimen;->guest_segment_contact_badge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mContactPhotoWidth:I

    .line 76
    sget v1, Lcom/android/calendar/R$dimen;->guest_segment_contact_badge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mContactPhotoHeight:I

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/segment/BirthdaysSegment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/segment/BirthdaysSegment;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private shouldShowContact(Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    iget-boolean v2, p1, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isBirthday:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 181
    :cond_1
    :goto_0
    return v0

    .line 176
    :cond_2
    iget-object v2, p1, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    iget-boolean v2, p1, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isGPlusUser:Z

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->profileId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static showContact(Landroid/content/Context;Landroid/view/View;Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 186
    iget v0, p2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->calendarId:I

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getCalendarOwnerAccount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getExtensions()Lcom/android/calendar/UnifiedExtensions;

    move-result-object v1

    invoke-interface {v1, p3, v0, p2}, Lcom/android/calendar/UnifiedExtensions;->showSmartProfile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/android/calendar/R$layout;->segment_birthdays:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 88
    iput-object p1, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 90
    return-void
.end method

.method public onRefreshModel()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/BirthdaysSegment$BirthdayProvider;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mPeople:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/BirthdaysSegment$BirthdayProvider;

    .line 102
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment$BirthdayProvider;->getBirthdayData()Lcom/android/calendar/timely/TimelineBirthday;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->refreshScreen(Lcom/android/calendar/timely/TimelineBirthday;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->hide()V

    goto :goto_0
.end method

.method public refreshScreen(Lcom/android/calendar/timely/TimelineBirthday;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mPeople:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 116
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineBirthday;->getBirthdayInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;

    .line 118
    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->shouldShowContact(Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->selfBirthday:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v2, v1

    .line 119
    :goto_1
    if-eqz v2, :cond_1

    sget v1, Lcom/android/calendar/R$layout;->birthday_item:I

    .line 120
    :goto_2
    iget-object v5, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mPeople:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 121
    sget-boolean v1, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v5, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v2, v3

    .line 118
    goto :goto_1

    .line 119
    :cond_1
    sget v1, Lcom/android/calendar/R$layout;->my_birthday_item:I

    goto :goto_2

    .line 122
    :cond_2
    sget v1, Lcom/android/calendar/R$id;->name:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    iget-object v6, v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    sget v1, Lcom/android/calendar/R$id;->badge:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 126
    new-instance v6, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    iget-object v7, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 128
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getContactPhotoCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v8

    invoke-direct {v6, v7, v8, v3}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Z)V

    .line 131
    new-instance v7, Lcom/android/calendar/timely/ContactPhotoRequestKey;

    iget-object v8, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/android/calendar/timely/ContactPhotoRequestKey;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    iget v8, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mContactPhotoWidth:I

    iget v9, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mContactPhotoHeight:I

    invoke-virtual {v6, v8, v9}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setDecodeDimensions(II)V

    .line 134
    iget v8, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mContactPhotoWidth:I

    iget v9, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mContactPhotoHeight:I

    invoke-virtual {v6, v3, v3, v8, v9}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setBounds(IIII)V

    .line 135
    invoke-virtual {v6, v7}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 137
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    iget-object v6, v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    if-eqz v2, :cond_3

    .line 142
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 143
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/calendar/R$string;->birthday_wish_action:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->shouldShowContact(Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    new-instance v2, Lcom/google/android/calendar/event/segment/BirthdaysSegment$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment$1;-><init>(Lcom/google/android/calendar/event/segment/BirthdaysSegment;Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->button_label:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mPeople:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 163
    :cond_5
    return-void
.end method
