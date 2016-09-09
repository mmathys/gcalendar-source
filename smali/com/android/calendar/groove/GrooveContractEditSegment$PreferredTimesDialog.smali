.class public Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;
.super Landroid/app/DialogFragment;
.source "GrooveContractEditSegment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/groove/GrooveContractEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferredTimesDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCheckedItems:[Z

.field private mListener:Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    const-class v0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private disablePositiveButtonIfNoneChecked(Landroid/app/AlertDialog;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->mCheckedItems:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->mCheckedItems:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->mCheckedItems:[Z

    const/4 v3, 0x2

    aget-boolean v0, v0, v3

    if-nez v0, :cond_0

    move v0, v1

    .line 374
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    return-void

    :cond_0
    move v0, v2

    .line 371
    goto :goto_0

    :cond_1
    move v1, v2

    .line 374
    goto :goto_1
.end method

.method public static newInstance(Lcom/google/android/calendar/api/HabitContract;Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;)Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 305
    new-instance v0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;

    invoke-direct {v0}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;-><init>()V

    .line 306
    const/4 v1, 0x3

    new-array v1, v1, [Z

    .line 307
    invoke-static {p0}, Lcom/android/calendar/groove/GrooveUtils;->allOrNoPreferredTimesSelected(Lcom/google/android/calendar/api/HabitContract;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    aput-boolean v3, v1, v5

    aput-boolean v3, v1, v3

    aput-boolean v3, v1, v4

    .line 314
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->setCheckedItems([Z)V

    .line 315
    invoke-virtual {v0, p1}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->setOnPreferredTimesSelectedListener(Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;)V

    .line 316
    return-object v0

    .line 310
    :cond_0
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isMorningPreferable()Z

    move-result v2

    aput-boolean v2, v1, v4

    .line 311
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isAfternoonPreferable()Z

    move-result v2

    aput-boolean v2, v1, v3

    .line 312
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isEveningPreferable()Z

    move-result v2

    aput-boolean v2, v1, v5

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->mListener:Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->mListener:Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->mCheckedItems:[Z

    invoke-interface {v0, v1}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;->onPreferredTimesSelected([Z)V

    .line 362
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->mCheckedItems:[Z

    aput-boolean p3, v0, p2

    .line 367
    check-cast p1, Landroid/app/AlertDialog;

    invoke-direct {p0, p1}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->disablePositiveButtonIfNoneChecked(Landroid/app/AlertDialog;)V

    .line 368
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 322
    if-eqz p1, :cond_0

    .line 323
    const-string v0, "preferred_times_checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->mCheckedItems:[Z

    .line 325
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 335
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/calendar/R$string;->preferred_times_spinner_title:I

    .line 336
    invoke-virtual {p0, v1}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->preferred_times_edit_dialog:I

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->mCheckedItems:[Z

    .line 337
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 338
    invoke-virtual {p0, v1}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 339
    invoke-virtual {p0, v1}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 335
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 346
    const-string v0, "preferred_times_checked"

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->mCheckedItems:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 347
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 329
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 330
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->disablePositiveButtonIfNoneChecked(Landroid/app/AlertDialog;)V

    .line 331
    return-void
.end method

.method public setCheckedItems([Z)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->mCheckedItems:[Z

    .line 355
    return-void
.end method

.method public setOnPreferredTimesSelectedListener(Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->mListener:Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;

    .line 351
    return-void
.end method
