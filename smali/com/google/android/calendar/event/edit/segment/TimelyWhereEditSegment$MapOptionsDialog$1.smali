.class Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog$1;
.super Ljava/lang/Object;
.source "TimelyWhereEditSegment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->mListener:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->access$1000(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;)Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->mListener:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->access$1000(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;)Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;->onOptionSelected(I)V

    .line 385
    :cond_0
    return-void
.end method
