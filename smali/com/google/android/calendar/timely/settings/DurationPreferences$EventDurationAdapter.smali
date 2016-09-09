.class Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;
.super Landroid/widget/BaseAdapter;
.source "DurationPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/DurationPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventDurationAdapter"
.end annotation


# instance fields
.field final mSpinner:Landroid/widget/Spinner;

.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/timely/settings/DurationPreferences;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    .line 285
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 287
    iput-object p2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;->mSpinner:Landroid/widget/Spinner;

    .line 288
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerValues:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->access$300(Lcom/google/android/calendar/timely/settings/DurationPreferences;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 308
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/timely/settings/DurationPreferences$ViewHolder;

    .line 309
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    .line 310
    :goto_0
    iget-object v5, v0, Lcom/google/android/calendar/timely/settings/DurationPreferences$ViewHolder;->text:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSelectedTextColor:I
    invoke-static {v3}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->access$400(Lcom/google/android/calendar/timely/settings/DurationPreferences;)I

    move-result v3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    iget-object v0, v0, Lcom/google/android/calendar/timely/settings/DurationPreferences$ViewHolder;->check:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    return-object v4

    :cond_0
    move v1, v2

    .line 309
    goto :goto_0

    .line 310
    :cond_1
    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/DurationPreferences;->mDefaultTextColor:I
    invoke-static {v3}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->access$500(Lcom/google/android/calendar/timely/settings/DurationPreferences;)I

    move-result v3

    goto :goto_1

    .line 311
    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerValues:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->access$300(Lcom/google/android/calendar/timely/settings/DurationPreferences;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 302
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 317
    if-nez p2, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->access$600(Lcom/google/android/calendar/timely/settings/DurationPreferences;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->setting_segment_spinner_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 319
    new-instance v2, Lcom/google/android/calendar/timely/settings/DurationPreferences$ViewHolder;

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lcom/google/android/calendar/timely/settings/DurationPreferences$ViewHolder;-><init>(Lcom/google/android/calendar/timely/settings/DurationPreferences;Landroid/view/ViewGroup;)V

    .line 320
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 322
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/timely/settings/DurationPreferences$ViewHolder;

    .line 323
    iget-object v2, v0, Lcom/google/android/calendar/timely/settings/DurationPreferences$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerValues:[Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->access$300(Lcom/google/android/calendar/timely/settings/DurationPreferences;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, v0, Lcom/google/android/calendar/timely/settings/DurationPreferences$ViewHolder;->check:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method
