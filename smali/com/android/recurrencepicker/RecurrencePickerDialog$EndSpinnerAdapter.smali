.class Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RecurrencePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/recurrencepicker/RecurrencePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final END_COUNT_MARKER:Ljava/lang/String;

.field final END_DATE_MARKER:Ljava/lang/String;

.field private mEndDateString:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemResourceId:I

.field private mStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTextResourceId:I

.field private mUseFormStrings:Z

.field final synthetic this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;


# direct methods
.method public constructor <init>(Lcom/android/recurrencepicker/RecurrencePickerDialog;Landroid/content/Context;Ljava/util/ArrayList;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1356
    iput-object p1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    .line 1357
    invoke-direct {p0, p2, p4, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1345
    const-string v0, "%s"

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->END_DATE_MARKER:Ljava/lang/String;

    .line 1346
    const-string v0, "%d"

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->END_COUNT_MARKER:Ljava/lang/String;

    .line 1358
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1359
    iput p4, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mItemResourceId:I

    .line 1360
    iput p5, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mTextResourceId:I

    .line 1361
    iput-object p3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mStrings:Ljava/util/ArrayList;

    .line 1362
    invoke-virtual {p1}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/recurrencepicker/R$string;->recurrence_end_date:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mEndDateString:Ljava/lang/String;

    .line 1367
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mEndDateString:Ljava/lang/String;

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1368
    if-gtz v0, :cond_2

    .line 1371
    iput-boolean v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mUseFormStrings:Z

    .line 1383
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mUseFormStrings:Z

    if-eqz v0, :cond_1

    .line 1386
    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinner:Landroid/widget/Spinner;
    invoke-static {p1}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$800(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Landroid/widget/Spinner;

    move-result-object v0

    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1389
    :cond_1
    return-void

    .line 1373
    :cond_2
    invoke-virtual {p1}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/recurrencepicker/R$plurals;->recurrence_end_count:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1375
    const-string v1, "%d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1376
    if-gtz v0, :cond_0

    .line 1379
    iput-boolean v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mUseFormStrings:Z

    goto :goto_0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1461
    if-nez p2, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mItemResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1467
    :cond_0
    sget v0, Lcom/android/recurrencepicker/R$id;->spinner_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1468
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 1395
    if-nez p2, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mTextResourceId:I

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1401
    :cond_0
    sget v0, Lcom/android/recurrencepicker/R$id;->spinner_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1403
    packed-switch p1, :pswitch_data_0

    .line 1450
    const/4 p2, 0x0

    .line 1454
    :cond_1
    :goto_0
    return-object p2

    .line 1405
    :pswitch_0
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1408
    :pswitch_1
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mEndDateString:Ljava/lang/String;

    const-string v2, "%s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1410
    if-eq v1, v4, :cond_1

    .line 1411
    iget-boolean v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mUseFormStrings:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_3

    .line 1414
    :cond_2
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndDateLabel:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$900(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1416
    :cond_3
    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mEndDateString:Ljava/lang/String;

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1421
    :pswitch_2
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$1000(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/recurrencepicker/R$plurals;->recurrence_end_count:I

    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    .line 1422
    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;
    invoke-static {v3}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$100(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    move-result-object v3

    iget v3, v3, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    .line 1421
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 1423
    const-string v1, "%d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1425
    if-eq v1, v4, :cond_1

    .line 1426
    iget-boolean v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->mUseFormStrings:Z

    if-nez v3, :cond_4

    if-nez v1, :cond_5

    .line 1429
    :cond_4
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCountLabel:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$1100(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1431
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mPostEndCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$1200(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1433
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    const/4 v1, 0x1

    # setter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mHidePostEndCount:Z
    invoke-static {v0, v1}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$1302(Lcom/android/recurrencepicker/RecurrencePickerDialog;Z)Z

    goto :goto_0

    .line 1435
    :cond_5
    const-string v3, "%d"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    .line 1436
    iget-object v4, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mPostEndCount:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$1200(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Landroid/widget/TextView;

    move-result-object v4

    .line 1437
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 1436
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1437
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1436
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;
    invoke-static {v3}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$100(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    move-result-object v3

    iget v3, v3, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 1440
    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mPostEndCount:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$1200(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1442
    :cond_6
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7

    .line 1443
    add-int/lit8 v1, v1, -0x1

    .line 1445
    :cond_7
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
