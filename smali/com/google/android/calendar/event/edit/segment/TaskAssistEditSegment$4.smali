.class Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$4;
.super Ljava/lang/Object;
.source "TaskAssistEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->onSetTaskAssistance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

.field final synthetic val$dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$dialogItems:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$4;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$4;->val$dialogItems:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$4;->val$dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$4;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->access$100(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$4;->val$dialogItems:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$4;->val$dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 123
    return-void
.end method
