.class public Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;
.super Landroid/app/DialogFragment;
.source "TimelyWhereEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapOptionsDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 358
    const-class v0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 367
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;)Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->mListener:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 375
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 376
    const/4 v2, 0x0

    sget v3, Lcom/android/calendar/R$string;->option_view_map:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 377
    const/4 v2, 0x1

    sget v3, Lcom/android/calendar/R$string;->option_remove:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 378
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog$1;

    invoke-direct {v2, p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog$1;-><init>(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;)V

    .line 379
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 378
    return-object v0
.end method

.method public setListener(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->mListener:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;

    .line 371
    return-void
.end method
