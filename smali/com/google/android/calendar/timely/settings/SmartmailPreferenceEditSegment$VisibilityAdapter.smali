.class Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmartmailPreferenceEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisibilityAdapter"
.end annotation


# instance fields
.field private mIsRtl:Z

.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V
    .locals 1

    .prologue
    .line 350
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 351
    invoke-virtual {p1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->mIsRtl:Z

    .line 352
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 356
    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->sPrivacyLabels:[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$1000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 372
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$ViewHolder;

    .line 373
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$300(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    .line 374
    :goto_0
    iget-object v5, v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$ViewHolder;->text:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSelectedTextColor:I
    invoke-static {v3}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$1100(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I

    move-result v3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    iget-object v3, v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I
    invoke-static {v5}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$1300(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I
    invoke-static {v6}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$1400(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I
    invoke-static {v7}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$1500(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    .line 376
    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I
    invoke-static {v8}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$1600(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I

    move-result v8

    .line 375
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 377
    iget-object v0, v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$ViewHolder;->check:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    return-object v4

    :cond_0
    move v1, v2

    .line 373
    goto :goto_0

    .line 374
    :cond_1
    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultTextColor:I
    invoke-static {v3}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$1200(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I

    move-result v3

    goto :goto_1

    .line 377
    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 361
    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->sPrivacyLabels:[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$1000()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 366
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 383
    if-nez p2, :cond_2

    .line 384
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$1700(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->setting_segment_spinner_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 385
    new-instance v2, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$ViewHolder;

    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v4, v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$ViewHolder;-><init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;Landroid/view/ViewGroup;)V

    .line 386
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 388
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$ViewHolder;

    .line 389
    iget-object v2, v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$ViewHolder;->text:Landroid/widget/TextView;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->sPrivacyLabels:[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$1000()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-boolean v2, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->mIsRtl:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I
    invoke-static {v2}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$1800(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I

    move-result v2

    .line 391
    :goto_1
    iget-boolean v4, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->mIsRtl:Z

    if-eqz v4, :cond_1

    .line 392
    :goto_2
    iget-object v4, v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I
    invoke-static {v5}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$2000(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I
    invoke-static {v6}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$2100(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I

    move-result v6

    invoke-virtual {v4, v2, v5, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 393
    iget-object v2, v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mPreferenceTextColor:I
    invoke-static {v3}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$2200(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    iget-object v0, v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$ViewHolder;->check:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    return-object v1

    :cond_0
    move v2, v3

    .line 390
    goto :goto_1

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I
    invoke-static {v3}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$1900(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I

    move-result v3

    goto :goto_2

    :cond_2
    move-object v1, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method
