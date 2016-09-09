.class public Lcom/android/calendar/event/CustomDurationDialog;
.super Landroid/app/DialogFragment;
.source "CustomDurationDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/CustomDurationDialog$Builder;,
        Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDoneButton:Landroid/widget/Button;

.field private mErrorText:Landroid/widget/TextView;

.field private mHourText:Landroid/widget/EditText;

.field private mHours:I

.field private mListener:Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;

.field private mMaxDurationInMinutes:I

.field private mMaxErrorMsgId:I

.field private mMinDurationInMinutes:I

.field private mMinErrorMsgId:I

.field private mMinuteText:Landroid/widget/EditText;

.field private mMinutes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/calendar/event/CustomDurationDialog;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/CustomDurationDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/CustomDurationDialog;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mHours:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/CustomDurationDialog;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinutes:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/CustomDurationDialog;)Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mListener:Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/CustomDurationDialog;)I
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getCustomDurationInMinutes()I

    move-result v0

    return v0
.end method

.method private getCustomDurationInMinutes()I
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mHours:I

    mul-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinutes:I

    add-int/2addr v0, v1

    return v0
.end method

.method private greaterThanMaxDuration()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 236
    iget v1, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMaxDurationInMinutes:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getCustomDurationInMinutes()I

    move-result v1

    iget v2, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMaxDurationInMinutes:I

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lessThanMinDuration()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 243
    iget v1, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinDurationInMinutes:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getCustomDurationInMinutes()I

    move-result v1

    iget v2, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinDurationInMinutes:I

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshEditTextView()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mHourText:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/calendar/event/CustomDurationDialog;->mHours:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinuteText:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinutes:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method

.method private setDoneButtonEnabled(Z)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mDoneButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 274
    :cond_0
    return-void
.end method

.method private setEditTextBackground(Landroid/widget/EditText;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v0

    .line 251
    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v1

    .line 252
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 253
    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 254
    return-void
.end method

.method private setHourAndMinute(I)V
    .locals 1

    .prologue
    .line 262
    div-int/lit8 v0, p1, 0x3c

    iput v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mHours:I

    .line 263
    rem-int/lit8 v0, p1, 0x3c

    iput v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinutes:I

    .line 264
    return-void
.end method

.method private updateErrorView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-direct {p0}, Lcom/android/calendar/event/CustomDurationDialog;->greaterThanMaxDuration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinuteText:Landroid/widget/EditText;

    sget v1, Lcom/android/calendar/R$drawable;->edittext_custom_background:I

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/CustomDurationDialog;->setEditTextBackground(Landroid/widget/EditText;I)V

    .line 219
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mErrorText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMaxErrorMsgId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    invoke-direct {p0, v2}, Lcom/android/calendar/event/CustomDurationDialog;->setDoneButtonEnabled(Z)V

    .line 233
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/CustomDurationDialog;->lessThanMinDuration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mHourText:Landroid/widget/EditText;

    sget v1, Lcom/android/calendar/R$drawable;->edittext_custom_background:I

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/CustomDurationDialog;->setEditTextBackground(Landroid/widget/EditText;I)V

    .line 224
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mErrorText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinErrorMsgId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    invoke-direct {p0, v2}, Lcom/android/calendar/event/CustomDurationDialog;->setDoneButtonEnabled(Z)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mHourText:Landroid/widget/EditText;

    sget v1, Lcom/android/calendar/R$drawable;->edittext_custom_background:I

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/CustomDurationDialog;->setEditTextBackground(Landroid/widget/EditText;I)V

    .line 229
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinuteText:Landroid/widget/EditText;

    sget v1, Lcom/android/calendar/R$drawable;->edittext_custom_background:I

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/CustomDurationDialog;->setEditTextBackground(Landroid/widget/EditText;I)V

    .line 230
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/event/CustomDurationDialog;->setDoneButtonEnabled(Z)V

    goto :goto_0
.end method

.method private validateHoursInput()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mHourText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mHours:I

    .line 202
    invoke-direct {p0}, Lcom/android/calendar/event/CustomDurationDialog;->updateErrorView()V

    .line 203
    return-void

    .line 201
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private validateMinutesInput()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinuteText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinutes:I

    .line 208
    iget v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinutes:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getCustomDurationInMinutes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/CustomDurationDialog;->setHourAndMinute(I)V

    .line 210
    invoke-direct {p0}, Lcom/android/calendar/event/CustomDurationDialog;->refreshEditTextView()V

    .line 214
    :goto_1
    return-void

    .line 207
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/CustomDurationDialog;->updateErrorView()V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/event/CustomDurationDialog;->mHourText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/android/calendar/event/CustomDurationDialog;->validateHoursInput()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinuteText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/calendar/event/CustomDurationDialog;->validateMinutesInput()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mListener:Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mListener:Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;

    invoke-interface {v0}, Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;->onCustomDurationDialogCancel()V

    .line 167
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 168
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->custom_duration_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "duration_in_minutes"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    invoke-direct {p0, v0}, Lcom/android/calendar/event/CustomDurationDialog;->setHourAndMinute(I)V

    .line 83
    sget v0, Lcom/android/calendar/R$id;->hour:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mHourText:Landroid/widget/EditText;

    .line 84
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mHourText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mHourText:Landroid/widget/EditText;

    new-instance v2, Lcom/android/calendar/event/CustomDurationDialog$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/CustomDurationDialog$1;-><init>(Lcom/android/calendar/event/CustomDurationDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 95
    sget v0, Lcom/android/calendar/R$id;->minute:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinuteText:Landroid/widget/EditText;

    .line 96
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinuteText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinuteText:Landroid/widget/EditText;

    new-instance v2, Lcom/android/calendar/event/CustomDurationDialog$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/CustomDurationDialog$2;-><init>(Lcom/android/calendar/event/CustomDurationDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "max_duration_in_minutes"

    const v3, 0x7fffffff

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMaxDurationInMinutes:I

    .line 109
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "max_duration_error_msg"

    sget v3, Lcom/android/calendar/R$string;->custom_duration_error_msg:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMaxErrorMsgId:I

    .line 111
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "min_duration_in_minutes"

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinDurationInMinutes:I

    .line 112
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "min_duration_error_msg"

    sget v3, Lcom/android/calendar/R$string;->custom_duration_error_msg:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinErrorMsgId:I

    .line 120
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinuteText:Landroid/widget/EditText;

    sget v2, Lcom/android/calendar/R$drawable;->edittext_custom_background:I

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/event/CustomDurationDialog;->setEditTextBackground(Landroid/widget/EditText;I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinuteText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 124
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->error:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mErrorText:Landroid/widget/TextView;

    .line 126
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/calendar/R$string;->find_time_custom_duration_dialog_title:I

    .line 127
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/calendar/event/CustomDurationDialog$4;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/CustomDurationDialog$4;-><init>(Lcom/android/calendar/event/CustomDurationDialog;)V

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/calendar/event/CustomDurationDialog$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/CustomDurationDialog$3;-><init>(Lcom/android/calendar/event/CustomDurationDialog;)V

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 146
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 177
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 178
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 152
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomDurationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 153
    if-eqz v0, :cond_0

    .line 154
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mDoneButton:Landroid/widget/Button;

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/CustomDurationDialog;->refreshEditTextView()V

    .line 158
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinuteText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinuteText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/event/CustomDurationDialog;->mMinuteText:Landroid/widget/EditText;

    .line 159
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 160
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public setOnCustomDurationSetListener(Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/calendar/event/CustomDurationDialog;->mListener:Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;

    .line 278
    return-void
.end method

.method public show(Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/android/calendar/event/CustomDurationDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/CustomDurationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 282
    return-void
.end method
