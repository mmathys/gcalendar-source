.class Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;
.super Landroid/widget/BaseAdapter;
.source "BirthdayEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisibilityAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;


# direct methods
.method private constructor <init>(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$1;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;-><init>(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mOptions:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$100(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 192
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;

    .line 193
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$200(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    .line 194
    :goto_0
    iget-object v5, v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;->label:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mSelectedTextColor:I
    invoke-static {v3}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$300(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I

    move-result v3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v3, v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;->label:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultPadding:I
    invoke-static {v5}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$500(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultPadding:I
    invoke-static {v6}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$600(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultPadding:I
    invoke-static {v7}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$700(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    .line 196
    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultPadding:I
    invoke-static {v8}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$800(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I

    move-result v8

    .line 195
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 197
    iget-object v0, v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;->check:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    return-object v4

    :cond_0
    move v1, v2

    .line 193
    goto :goto_0

    .line 194
    :cond_1
    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultTextColor:I
    invoke-static {v3}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$400(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I

    move-result v3

    goto :goto_1

    .line 197
    :cond_2
    const/4 v2, 0x4

    goto :goto_2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mOptions:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$100(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 186
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    if-nez p2, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$900(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->setting_segment_spinner_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 205
    new-instance v2, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;-><init>(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;Landroid/view/ViewGroup;)V

    .line 206
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    .line 208
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;

    .line 209
    iget-object v2, v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;->label:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mOptions:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$100(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;->label:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mLabelTextColor:I
    invoke-static {v2}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$1000(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v1, v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;->label:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultPadding:I
    invoke-static {v2}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$1100(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultPadding:I
    invoke-static {v3}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->access$1200(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 212
    iget-object v0, v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;->check:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method
