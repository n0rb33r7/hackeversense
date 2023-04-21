.class public interface abstract Lcom/senseonics/api/GetSettingService;
.super Ljava/lang/Object;
.source "GetSettingService.java"


# static fields
.field public static final PATH:Ljava/lang/String; = "api/care/"


# virtual methods
.method public abstract checkBatteryMonitorThreshold()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/util/List<",
            "Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/care/GetUserTempThresholds"
    .end annotation
.end method
