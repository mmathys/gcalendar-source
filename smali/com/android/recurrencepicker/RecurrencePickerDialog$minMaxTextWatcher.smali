.class Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;
.super Ljava/lang/Object;
.source "RecurrencePickerDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/recurrencepicker/RecurrencePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "minMaxTextWatcher"
.end annotation


# instance fields
.field private mDefault:I

.field private mMax:I

.field private mMin:I

.field final synthetic this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;


# direct methods
.method public constructor <init>(Lcom/android/recurrencepicker/RecurrencePickerDialog;III)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;->mMin:I

    .line 253
    iput p4, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;->mMax:I

    .line 254
    iput p3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;->mDefault:I

    .line 255
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 260
    .line 263
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 268
    :goto_0
    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;->mMin:I

    if-ge v0, v1, :cond_1

    .line 269
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;->mMin:I

    move v1, v2

    .line 277
    :goto_1
    if-eqz v1, :cond_0

    .line 278
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 279
    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # invokes: Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateDoneButtonState()V
    invoke-static {v1}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$000(Lcom/android/recurrencepicker/RecurrencePickerDialog;)V

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;->onChange(I)V

    .line 284
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;->mDefault:I

    goto :goto_0

    .line 271
    :cond_1
    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;->mMax:I

    if-le v0, v1, :cond_2

    .line 273
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;->mMax:I

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method onChange(I)V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method
