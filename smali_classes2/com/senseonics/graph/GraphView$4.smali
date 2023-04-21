.class Lcom/senseonics/graph/GraphView$4;
.super Ljava/lang/Object;
.source "GraphView.java"

# interfaces
.implements Lcom/jjoe64/graphview/LineGraphView$EventsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/GraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/graph/GraphView;


# direct methods
.method constructor <init>(Lcom/senseonics/graph/GraphView;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hidePopUpEvent()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-virtual {v0}, Lcom/senseonics/graph/GraphView;->hidePopUp()V

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-virtual {v0}, Lcom/senseonics/graph/GraphView;->hidePopUp()V

    return-void
.end method

.method public onEventClick(FFLcom/jjoe64/graphview/Graph$EventGroup;)V
    .locals 4

    .line 287
    sget-boolean v0, Lcom/senseonics/graph/util/GraphUtils;->listPopUpIsVisible:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object p1, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-virtual {p1}, Lcom/senseonics/graph/GraphView;->hidePopUp()V

    goto :goto_0

    .line 290
    :cond_0
    sput p2, Lcom/senseonics/graph/util/GraphUtils;->popUpY:F

    .line 291
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphView;->-$$Nest$fgetglucoseView(Lcom/senseonics/graph/GraphView;)Lcom/jjoe64/graphview/Graph;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph;->getRectWidth()I

    move-result v0

    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDateNew()Ljava/util/Calendar;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    iget v3, p3, Lcom/jjoe64/graphview/Graph$EventGroup;->x:F

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils;->popUpCalendar:Ljava/util/Calendar;

    .line 297
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/senseonics/graph/GraphView;->createEventsPopUp(FFLcom/jjoe64/graphview/Graph$EventGroup;)V

    :goto_0
    return-void
.end method

.method public tapAddNewEvent(Ljava/util/Calendar;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphView;->-$$Nest$fgetscrollManager(Lcom/senseonics/graph/GraphView;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/senseonics/graph/GraphView$ScrollManager;->tapAddNewEvent(Ljava/util/Calendar;)V

    return-void
.end method
