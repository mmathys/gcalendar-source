.class public Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;
.super Landroid/app/DialogFragment;
.source "AbstractEditManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/AbstractEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditModifyOptionDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mIsTask:Z

.field private mListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

.field private mMultipleModification:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 652
    const-class v0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 656
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mMultipleModification:I

    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mIsTask:Z

    .line 669
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;)I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mMultipleModification:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    return-object v0
.end method

.method private getModifyMultipleStringResourceId()I
    .locals 3

    .prologue
    .line 672
    iget v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mMultipleModification:I

    packed-switch v0, :pswitch_data_0

    .line 679
    sget-object v0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->TAG:Ljava/lang/String;

    const-string v1, "Unknown multiple modification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 680
    iget-boolean v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mIsTask:Z

    if-eqz v0, :cond_2

    .line 681
    sget v0, Lcom/android/calendar/R$string;->modify_all_following_tasks:I

    .line 680
    :goto_0
    return v0

    .line 674
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mIsTask:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/calendar/R$string;->modify_all_tasks:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/calendar/R$string;->modify_all:I

    goto :goto_0

    .line 676
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mIsTask:Z

    if-eqz v0, :cond_1

    .line 677
    sget v0, Lcom/android/calendar/R$string;->modify_all_following_tasks:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/calendar/R$string;->modify_all_following:I

    goto :goto_0

    .line 681
    :cond_2
    sget v0, Lcom/android/calendar/R$string;->modify_all_following:I

    goto :goto_0

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 688
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 689
    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mIsTask:Z

    if-eqz v0, :cond_0

    .line 690
    sget v0, Lcom/android/calendar/R$string;->modify_task:I

    .line 689
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 691
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->getModifyMultipleStringResourceId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 692
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/calendar/R$string;->edit_event_label:I

    .line 693
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$2;

    invoke-direct {v3, p0}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$2;-><init>(Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;)V

    .line 694
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    .line 712
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$1;-><init>(Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 692
    return-object v0

    .line 690
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->modify_event:I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 724
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 725
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;->onModificationCancelled()V

    .line 728
    :cond_0
    return-void
.end method

.method public setIsTask(Z)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;
    .locals 0

    .prologue
    .line 744
    iput-boolean p1, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mIsTask:Z

    .line 745
    return-object p0
.end method

.method public setModificationSelectedListener(Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    .line 733
    return-object p0
.end method

.method public setMultipleModification(I)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 739
    iput p1, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mMultipleModification:I

    .line 740
    return-object p0

    .line 737
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
