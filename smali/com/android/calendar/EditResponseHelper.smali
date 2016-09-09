.class public Lcom/android/calendar/EditResponseHelper;
.super Ljava/lang/Object;
.source "EditResponseHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mClickedOk:Z

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mListListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mParent:Landroid/app/Activity;

.field private mWhichEvents:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/EditResponseHelper;->mWhichEvents:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/EditResponseHelper;->mClickedOk:Z

    .line 97
    new-instance v0, Lcom/android/calendar/EditResponseHelper$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/EditResponseHelper$1;-><init>(Lcom/android/calendar/EditResponseHelper;)V

    iput-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mListListener:Landroid/content/DialogInterface$OnClickListener;

    .line 42
    iput-object p1, p0, Lcom/android/calendar/EditResponseHelper;->mParent:Landroid/app/Activity;

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/EditResponseHelper;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/android/calendar/EditResponseHelper;->mWhichEvents:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/calendar/EditResponseHelper;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getClickedOk()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/calendar/EditResponseHelper;->mClickedOk:Z

    return v0
.end method

.method private setClickedOk(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/calendar/EditResponseHelper;->mClickedOk:Z

    .line 92
    return-void
.end method


# virtual methods
.method public dismissAlertDialog()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 152
    :cond_0
    return-void
.end method

.method public getWhichEvents()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/calendar/EditResponseHelper;->mWhichEvents:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/EditResponseHelper;->setClickedOk(Z)V

    .line 68
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/calendar/EditResponseHelper;->getClickedOk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditResponseHelper;->setWhichEvents(I)V

    .line 77
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/EditResponseHelper;->setClickedOk(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 84
    :cond_1
    return-void
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/calendar/EditResponseHelper;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 122
    return-void
.end method

.method public setWhichEvents(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/android/calendar/EditResponseHelper;->mWhichEvents:I

    .line 63
    return-void
.end method

.method public showDialog(I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 127
    iget-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_0

    .line 128
    iput-object p0, p0, Lcom/android/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 130
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/calendar/EditResponseHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/calendar/R$string;->change_response_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    .line 131
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->change_response_labels:I

    iget-object v2, p0, Lcom/android/calendar/EditResponseHelper;->mListListener:Landroid/content/DialogInterface$OnClickListener;

    .line 132
    invoke-virtual {v0, v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 138
    iput-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 140
    if-ne p1, v3, :cond_1

    .line 143
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    :cond_1
    return-void
.end method
