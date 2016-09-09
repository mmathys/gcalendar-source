.class Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccessCodePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/AccessCodePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessCodeAdapter"
.end annotation


# instance fields
.field private mSelectedItemIndex:I

.field final synthetic this$0:Lcom/android/calendar/event/AccessCodePickerDialog;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/AccessCodePickerDialog;)V
    .locals 1

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->mSelectedItemIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/AccessCodePickerDialog;Lcom/android/calendar/event/AccessCodePickerDialog$1;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;-><init>(Lcom/android/calendar/event/AccessCodePickerDialog;)V

    return-void
.end method

.method private getAccessCodeLabel(Lcom/android/calendar/event/AccessCode;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/android/calendar/event/AccessCode;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    invoke-virtual {p1}, Lcom/android/calendar/event/AccessCode;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_0
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 190
    new-instance v2, Landroid/text/style/TtsSpan$DigitsBuilder;

    invoke-direct {v2, v0}, Landroid/text/style/TtsSpan$DigitsBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/style/TtsSpan$DigitsBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v0

    .line 191
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v1, v0, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v1

    .line 195
    :cond_0
    return-object v0

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    # getter for: Lcom/android/calendar/event/AccessCodePickerDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$600(Lcom/android/calendar/event/AccessCodePickerDialog;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->access_code_item_host:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 177
    invoke-virtual {p1}, Lcom/android/calendar/event/AccessCode;->getNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    # getter for: Lcom/android/calendar/event/AccessCodePickerDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$600(Lcom/android/calendar/event/AccessCodePickerDialog;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->access_code_item_participant:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 181
    invoke-virtual {p1}, Lcom/android/calendar/event/AccessCode;->getNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setTextAndContentDescription(Landroid/widget/CheckedTextView;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    # getter for: Lcom/android/calendar/event/AccessCodePickerDialog;->mAccessCodes:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$400(Lcom/android/calendar/event/AccessCodePickerDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/android/calendar/event/AccessCode;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    # getter for: Lcom/android/calendar/event/AccessCodePickerDialog;->mAccessCodes:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$400(Lcom/android/calendar/event/AccessCodePickerDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    # getter for: Lcom/android/calendar/event/AccessCodePickerDialog;->mAccessCodes:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$400(Lcom/android/calendar/event/AccessCodePickerDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/AccessCode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->getItem(I)Lcom/android/calendar/event/AccessCode;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 148
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedItem()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->mSelectedItemIndex:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 153
    if-nez p2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    # getter for: Lcom/android/calendar/event/AccessCodePickerDialog;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$500(Lcom/android/calendar/event/AccessCodePickerDialog;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->event_info_access_code_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 156
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 157
    iget-object v1, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    # getter for: Lcom/android/calendar/event/AccessCodePickerDialog;->mAccessCodes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$400(Lcom/android/calendar/event/AccessCodePickerDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    # getter for: Lcom/android/calendar/event/AccessCodePickerDialog;->mAccessCodes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$400(Lcom/android/calendar/event/AccessCodePickerDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/AccessCode;

    invoke-direct {p0, v1}, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->getAccessCodeLabel(Lcom/android/calendar/event/AccessCode;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->setTextAndContentDescription(Landroid/widget/CheckedTextView;Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    iget v1, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->mSelectedItemIndex:I

    if-ne v1, p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 164
    return-object p2

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    .line 161
    # getter for: Lcom/android/calendar/event/AccessCodePickerDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$600(Lcom/android/calendar/event/AccessCodePickerDialog;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->access_code_item_no_passcode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->setTextAndContentDescription(Landroid/widget/CheckedTextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setSelectedItemIndex(I)V
    .locals 0

    .prologue
    .line 203
    iput p1, p0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->mSelectedItemIndex:I

    .line 204
    invoke-virtual {p0}, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->notifyDataSetChanged()V

    .line 205
    return-void
.end method
