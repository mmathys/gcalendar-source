.class Lcom/google/android/calendar/event/segment/GeoClickSegment$1;
.super Ljava/lang/Object;
.source "GeoClickSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/segment/GeoClickSegment;->enableAction(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/segment/GeoClickSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/segment/GeoClickSegment;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/calendar/event/segment/GeoClickSegment$1;->this$0:Lcom/google/android/calendar/event/segment/GeoClickSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/GeoClickSegment$1;->this$0:Lcom/google/android/calendar/event/segment/GeoClickSegment;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/segment/GeoClickSegment;->startAction()V

    .line 84
    return-void
.end method
