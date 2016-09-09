.class Lcom/android/calendar/newapi/screen/EventViewScreenController$1;
.super Ljava/lang/Object;
.source "EventViewScreenController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/EventViewScreenController;->onDeleteClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/EventViewScreenController;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/EventViewScreenController;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/EventViewScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/EventViewScreenController;

    # invokes: Lcom/android/calendar/newapi/screen/EventViewScreenController;->onDeleteConfirmed()V
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->access$000(Lcom/android/calendar/newapi/screen/EventViewScreenController;)V

    .line 191
    return-void
.end method
