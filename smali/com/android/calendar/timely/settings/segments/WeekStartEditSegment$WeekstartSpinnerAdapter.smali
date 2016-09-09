.class Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "WeekStartEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekstartSpinnerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$1;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;-><init>(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mOptions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->access$100(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;

    .line 166
    iget-object v2, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->access$400(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 168
    iget-object v2, v0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;->label:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mDropdownSelectedLabelTextColor:I
    invoke-static {v3}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->access$500(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v0, v0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;->check:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :goto_0
    return-object v1

    .line 172
    :cond_0
    iget-object v0, v0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;->label:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mDropdownLabelTextColor:I
    invoke-static {v2}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->access$600(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mOptions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->access$100(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 143
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;

    iget-object v0, v0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->preferences_segment_weekstart_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 150
    new-instance v2, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;

    iget-object v3, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;-><init>(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;Landroid/view/ViewGroup;)V

    .line 151
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    .line 153
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;

    .line 154
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mLabels:Ljava/util/List;
    invoke-static {v1}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->access$200(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    iget-object v2, v0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, v0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;->label:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mLabelTextColor:I
    invoke-static {v2}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->access$300(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object v0, v0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;->check:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    return-object p2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mOptions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->access$100(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
